#
# Cookbook Name:: ud-macoffice
# Recipe:: default
#
# Copyright 2013, Urbandecoder Labs LLC
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

office = Chef::EncryptedDataBagItem.load('secret_urls', 'officemac2011')

dmg_package 'Office Installer' do
  source office['url']
  checksum office['checksum']
  volumes_dir 'Microsoft Office 2011'
  action :install
  type "pkg"
  package_id "com.microsoft.office.en.required.pkg.14.2.0"
end

# Autoupdate
dmg_package 'AutoUpdate Installer' do
  source 'http://download.microsoft.com/download/6/B/0/6B0E1062-C4D6-48F9-94A2-FCA76F19219C/Microsoft_AutoUpdate_3.1.1_Updater.pkg'
  checksum '63e79169b042aa457321be785c803aabbb1bfc6b83c04e225af6e07b4b809562'
  action :install
  type "pkg"
  package_id "com.microsoft.package.Microsoft_AutoUpdate.app"
end

# Error Reporting
dmg_package 'Error Reporting Installer' do
  source 'http://download.microsoft.com/download/B/F/B/BFB8DEB8-91CD-4722-AE6F-476C4013CFFC/MERP_229.dmg'
  checksum '221400b62d452fd30865c77a9a67441df6fab77417a9e4ea2084922763da8a1b'
  volumes_dir 'Microsoft Error Reporting'
  action :install
  type "mpkg"
  package_id "com.microsoft.merp.all.errorreporting.pkg.2.2.9"
end

# Service Pack 1 - not necessary since 14.2.0 already includes it
#dmg_package 'Service Pack 1' do
#  source 'http://download.microsoft.com/download/5/E/E/5EE76E3B-8D17-4BB1-AF4A-A33D38C8810F/Office2011-1410UpdateEN.dmg'
#  checksum '875d6f4e3c406fffa3d479ee567a86ef02827ba7a64aaa4299ad9d3961868b64'
#  volumes_dir 'Microsoft Office 2011 14.1.0 Update'
#  action :install
#  type "mpkg"
#  package_id ".."
#end

dmg_package 'Office 2011 14.4.9 Update' do
  source 'http://download.microsoft.com/download/7/0/C/70C26EA7-EF6D-4521-9805-BE8403739785/Office2011-1449Update_EN-US.dmg'
  checksum 'b8bed3494894be8d690317c9a4bce875eee40bd8ab2a33a330d6e597b74c4a04'
  volumes_dir 'Microsoft Office 2011 14.4.9 Update'
  type 'pkg'
  package_id 'com.microsoft.office.all.core.pkg.14.4.9.update'
end

# Lync April 2015 update
dmg_package 'Lync Installer' do
  app 'Lync Installer'
  source 'http://download.microsoft.com/download/5/0/0/500C7E1F-3235-47D4-BC11-95A71A1BA3ED/lync_14.0.11_150403.dmg'
  checksum '450a8bbfc32b1b7415aef8c8984abe44e7f9832c9b7700fb9d8f8c4b44de9d26'
  volumes_dir 'Microsoft Lync'
  type 'pkg'
  package_id 'com.microsoft.lync.all.lync.pkg.14.0.11'
end
