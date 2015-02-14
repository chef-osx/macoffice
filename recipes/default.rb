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
  source 'http://download.microsoft.com/download/B/0/D/B0DB40D2-FF90-4633-925A-B8A7D4183279/AutoUpdate_236.dmg'
  checksum '80d9b48fa89847797e166811b9deb7a0cfaff48a989ac8aa2aaf56bca55c1855'
  volumes_dir 'MAU'
  action :install
  type "mpkg"
  package_id "com.microsoft.mau.all.autoupdate.pkg.2.3.6"
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

dmg_package 'Office 2011 14.4.8 Update' do
  source 'http://download.microsoft.com/download/7/8/E/78E0938D-FDC7-4975-99E7-54256FECDE07/Office2011-1448Update_EN-US.dmg'
  checksum 'f295c8c646a5dfe1f6b5d620411b7cba3d80ebcde26a2c53215d76524c54fe54'
  volumes_dir 'Microsoft Office 2011 14.4.8 Update'
  type 'pkg'
  package_id 'com.microsoft.office.all.core.pkg.14.4.8.update'
end

# Lync October 2014 update
dmg_package 'Lync Installer 14.0.10' do
  app 'Lync Installer'
  source 'http://download.microsoft.com/download/5/0/0/500C7E1F-3235-47D4-BC11-95A71A1BA3ED/lync_14.0.10_141024.dmg'
  checksum 'da14ab83303717fdd01d5262be8cf4c83481b3188314d6527540ea3596bc38fe'
  volumes_dir 'Microsoft Lync'
  type 'pkg'
  package_id 'com.microsoft.lync.all.lync.pkg.14.0.10'
end
