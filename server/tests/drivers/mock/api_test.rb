$:.unshift File.join(File.dirname(__FILE__), '..', '..', '..')
require 'tests/common'

module DeltacloudUnitTest
  class ApiTest < Test::Unit::TestCase
    include Rack::Test::Methods

    def app
      Sinatra::Application
    end

    def test_it_returns_entry_points
      do_xml_request '/api'
      (last_xml_response/'/api/link').length.should > 0
    end

    def test_it_has_correct_attributes_set
      do_xml_request '/api'
      (last_xml_response/'/api/link').each do |link|
        link.attributes.keys.sort.should == [ 'href', 'rel' ]
      end
    end

    def test_it_responses_to_html
      do_request '/api', {}, false, { :format => :html }
      last_response.status.should == 200
      Nokogiri::HTML(last_response.body).search('html').first.name.should == 'html'
    end

    def test_it_responses_to_json
      do_request '/api', {}, false, { :format => :json }
      last_response.status.should == 200
      JSON::parse(last_response.body).class.should == Hash
      JSON::parse(last_response.body)['api'].class.should == Hash
    end

    def test_it_switches_drivers
      begin
        ENV.delete("API_PROVIDER")
        do_xml_request '/api'
        (last_xml_response/"api/link[rel = 'instances']").first.should_not == nil

        # Switch to storage-only mock driver
        ENV["API_PROVIDER"] = "storage"
        do_xml_request '/api'
        (last_xml_response/"api/link[rel = 'instances']").first.should == nil
      ensure
        ENV.delete("API_PROVIDER")
      end
    end
  end
end
