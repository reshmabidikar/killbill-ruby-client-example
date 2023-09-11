require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "Create plugin configuration"

plugin_name = "demo_plugin"
plugin_config = "tenant_config"

user = "demo"
reason = nil
comment = nil

tenant_key_value = KillBillClient::Model::Tenant.upload_tenant_plugin_config(plugin_name,
                                                          plugin_config,
                                                          user,
                                                          reason,
                                                          comment,
                                                          options)
puts "tenant_key_value is #{tenant_key_value.key}"

puts "Retrieve tenant plugin configuration"

plugin_name = "demo_plugin"

tenant_key_value = KillBillClient::Model::Tenant.get_tenant_plugin_config(plugin_name, options)
puts "tenant_key_value is #{tenant_key_value.values}"

puts "delete tenant plugin configuration"

user = "demo"
reason = nil
comment = nil

plugin_name = "demo_plugin"

KillBillClient::Model::Tenant.delete_tenant_plugin_config(plugin_name,
                                                          user,
                                                          reason,
                                                          comment,
                                                          options)
