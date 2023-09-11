require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "add tenant configuration"

user = "demo"
reason = nil
comment = nil

key_name = "demo_key_ruby"
key_value = "demo_value"

tenant_key_value = KillBillClient::Model::Tenant.upload_tenant_plugin_config(key_name,
                                                           key_value,
                                                           user,
                                                           reason,
                                                           comment,
                                                           options)

puts "tenant_key_value is #{tenant_key_value.key}"