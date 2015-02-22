#
# Cookbook Name:: macoffice
# Recipe:: outlook
#
# Copyright 2015, Urbandecoder Labs LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

dmg_package 'Microsoft Outlook' do
  source 'http://download.microsoft.com/download/3/E/7/3E75A704-BD77-451D-9F79-86D9868E27FC/MicrosoftOutlook15.6.dmg'
  checksum '41cc3b582c5a1a5e040c17559a3268f8e2a26943cb505e1319e245885349da52'
  volumes_dir 'Microsoft Outlook'
  action :install
  type 'pkg'
  package_id 'com.microsoft.package.Microsoft_Outlook.app'
end
