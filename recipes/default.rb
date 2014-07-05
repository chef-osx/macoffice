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

dmg_package 'Office 2011 14.4.1 Update' do
  source 'http://download.microsoft.com/download/A/6/9/A69FE062-D726-456E-A8AA-B1D2A292300E/Office2011-1441Update_EN-US.dmg'
  checksum '340ff8b731c89f103927db4a2571fa81c9fcb0dc683f394919fda12bfc793af7'
  volumes_dir 'Microsoft Office 2011 14.4.1 Update'
  type 'pkg'
  package_id 'com.microsoft.office.all.core.pkg.14.4.1.update'
end

dmg_package 'Office 2011 14.4.2 Update' do
  source 'http://download.microsoft.com/download/4/B/0/4B01A8A2-795C-4F3E-90E6-2E5FCE6A72A6/Office2011-1442Update_EN-US.dmg'
  checksum 'e0123bcef3cf1b939cbfce39fe3517b5c7874eb8d77cbf2d8bbb62145337b407'
  volumes_dir 'Microsoft Office 2011 14.4.2 Update'
  type 'pkg'
  package_id 'com.microsoft.office.all.core.pkg.14.4.2.update'
end

dmg_package 'Office 2011 14.4.3 Update' do
  source 'http://download.microsoft.com/download/D/A/D/DAD7491B-5FA0-49BB-9BC5-84F43F46152E/Office2011-1443Update_EN-US.dmg'
  checksum 'ab12fa14f09004509113eb112418726b6bac21e6a045229c8a174c2b766301c7'
  volumes_dir 'Microsoft Office 2011 14.4.3 Update'
  type 'pkg'
  package_id 'com.microsoft.office.all.core.pkg.14.4.3.update'
end

# Lync June 2014 update
dmg_package 'Lync Installer 14.0.9' do
  app 'Lync Installer'
  source 'http://download.microsoft.com/download/5/0/0/500C7E1F-3235-47D4-BC11-95A71A1BA3ED/lync_14.0.9_140606.dmg'
  checksum 'd1263d9751f4f18bfeeeed7502e93748805fcd85875a63fffbce805c330e280b'
  volumes_dir 'Microsoft Lync'
  type 'pkg'
  package_id 'com.microsoft.lync.all.lync.pkg.14.0.9'
end
