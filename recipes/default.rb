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

# Service Pack 1
#dmg_package 'Service Pack 1' do
#  source 'http://download.microsoft.com/download/5/E/E/5EE76E3B-8D17-4BB1-AF4A-A33D38C8810F/Office2011-1410UpdateEN.dmg'
#  checksum '875d6f4e3c406fffa3d479ee567a86ef02827ba7a64aaa4299ad9d3961868b64'
#  volumes_dir 'Microsoft Office 2011 14.1.0 Update'
#  action :install
#  type "mpkg"
#  package_id ".."
#end

dmg_package 'Office 2011 14.3.7 Update' do
  source 'http://download.microsoft.com/download/C/6/3/C634FC8C-A1E0-40B9-9B56-87EA64EFCC5F/Office2011-1437Update_EN-US.dmg'
  checksum '211025c03c43fa02884519b7245d1ea52bc783f16233bf11510baa8faaf4edeb'
  volumes_dir 'Microsoft Office 2011 14.3.7 Update'
  type 'pkg'
  package_id 'com.microsoft.office.all.core.pkg.14.3.7.update'
end

dmg_package 'Office 2011 14.3.8 Update' do
  source 'http://download.microsoft.com/download/D/1/E/D1E7CB92-7D4C-4028-BCAD-82E3E547797D/Office2011-1438Update_EN-US.dmg'
  checksum '16491be5922a23f3588c567e3a8cceaf13b279358defae8b22923e5edd6f9077'
  volumes_dir 'Microsoft Office 2011 14.3.8 Update'
  type 'pkg'
  package_id 'com.microsoft.office.all.core.pkg.14.3.8.update'
end

dmg_package 'Office 2011 14.3.9 Update' do
  source 'http://download.microsoft.com/download/E/C/6/EC6221F3-463C-46FF-8365-8784A67D7872/Office2011-1439Update_EN-US.dmg'
  checksum '9e10855139ae39de7118485e2bf45b93ad0a82e67d351040bd972ce603040129'
  volumes_dir 'Microsoft Office 2011 14.3.9 Update'
  type 'pkg'
  package_id 'com.microsoft.office.all.core.pkg.14.3.9.update'
end
