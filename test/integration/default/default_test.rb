# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe package('apache2') do
  it { should be_installed }
end

describe file('/var/www/html/index.html') do
  it { should exist }
  its('content') { should match(/Hello ChefConf2019!!/) } 
end

describe upstart_service('apache2') do
   it { should be_enabled }
   it { should be_running }
end

describe command('curl localhost') do
    its('stdout') { should match(/Hello ChefConf2019!!/)}
end
