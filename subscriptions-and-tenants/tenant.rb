require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "creating tenant"
tenant = KillBillClient::Model::Tenant.new
tenant.external_key = "ruby_external_key"
tenant.api_key = "ruby_api_key"
tenant.api_secret = "ruby_api_secret"

use_global_defalut = true
user = "demo"
reason = nil
comment = nil

tenant = tenant.create(use_global_defalut,
              user,
              reason,
              comment,
              options)
puts "tenant created #{tenant.api_key}"

puts "tenant by id"
tenant_id = "9ab7db57-02a9-430c-bdfa-0a8c24d2e368"
tenant = KillBillClient::Model::Tenant.find_by_id(tenant_id, options)
puts "tenant is #{tenant.api_key}"

puts "tenant by api key"
api_key = "bob"
tenant = KillBillClient::Model::Tenant.find_by_api_key(api_key, options)
puts "tenant is #{tenant.api_key}"
