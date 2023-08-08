require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

user = "demo"
reason = nil
comment = nil

key_name = "demo_key_ruby"
key_value = "demo_value"

puts "creating key value pair"
tenant_key_value = KillBillClient::Model::Tenant.upload_tenant_user_key_value(key_name,
                                                           key_value,
                                                           user,
                                                           reason,
                                                           comment,
                                                           options)

puts "tenant_key_value is #{tenant_key_value.key}"

puts "retrieving per tenant key value"
key_name = "demo_key_ruby"

tenant_key_value = KillBillClient::Model::Tenant.get_tenant_user_key_value(key_name, options)
puts "tenant_key_value is #{tenant_key_value.values}"

puts "deleting per tenant key value"
user = "demo"
reason = nil
comment = nil
key_name = "demo_key_ruby"

KillBillClient::Model::Tenant.delete_tenant_user_key_value(key_name,
                                                           user,
                                                           reason,
                                                           comment,
                                                           options)

puts "retrieving by key prefix"
key_prefix = "CATALOG"

tenant_key_value = KillBillClient::Model::Tenant.search_tenant_config(key_prefix, options)
puts "tenant_key_value is #{tenant_key_value.values}"