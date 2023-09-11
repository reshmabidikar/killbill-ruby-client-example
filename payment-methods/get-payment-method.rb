require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "Payment method by id"
payment_method_id = "83fc2425-ede3-4fbd-b117-2eff4c660cfe"
with_plugin_info = false

payment_method = KillBillClient::Model::PaymentMethod.find_by_id(payment_method_id,
                                                with_plugin_info,
                                                options)

puts "payment_method is #{payment_method.plugin_name}"

puts "Payment method by key"
payment_method_key = "sample_external_key"
included_deleted = false
with_plugin_info = false
audit = 'NONE'

payment_method = KillBillClient::Model::PaymentMethod.find_by_external_key(payment_method_key,
                                                          included_deleted,
                                                          with_plugin_info,
                                                          audit,
                                                          options)
puts "payment_method is #{payment_method.plugin_name}"