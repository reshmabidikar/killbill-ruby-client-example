require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "Payment by transaction id"
payment_transaction_id = "e5f000f7-0733-4828-a887-3a4a58d27596"
with_plugin_info = false
with_attempts = false

payment = KillBillClient::Model::Payment.find_by_transaction_id(payment_transaction_id, with_plugin_info, with_attempts, options)
puts "payment is #{payment.payment_id}"

puts "Payment by transaction key"
external_key = "e5f000f7-0733-4828-a887-3a4a58d27596"
with_plugin_info = false
with_attempts = false
audit = 'NONE'

payment = KillBillClient::Model::Payment.find_by_transaction_external_key(external_key, with_plugin_info, with_attempts, audit, options)
puts "payment is #{payment.payment_id}"