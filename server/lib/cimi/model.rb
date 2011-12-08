# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.  The
# ASF licenses this file to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance with the
# License.  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations
# under the License.
#

# Declare namespace for CIMI model
#
module CIMI
  module Model; end
end

require 'cimi/model/schema'
require 'cimi/model/base'
require 'cimi/model/errors'
require 'cimi/model/cloud_entry_point'
require 'cimi/model/machine_template'
require 'cimi/model/machine_image'
require 'cimi/model/machine_configuration'
require 'cimi/model/action'
require 'cimi/model/machine'
require 'cimi/model/volume'
require 'cimi/model/machine_admin'
require 'cimi/model/volume_configuration'
require 'cimi/model/volume_image'
require 'cimi/model/volume_template'
require 'cimi/model/machine_template_collection'
require 'cimi/model/machine_image_collection'
require 'cimi/model/machine_configuration_collection'
require 'cimi/model/machine_collection'
require 'cimi/model/volume_collection'
require 'cimi/model/machine_admin_collection'
require 'cimi/model/volume_configuration_collection'
require 'cimi/model/volume_image_collection'
require 'cimi/model/volume_template_collection'
require 'cimi/model/entity_metadata'
