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
payment_transaction_id = "286c091c-7461-4a46-9437-961e22684f24"
with_plugin_info = false

payment = KillBillClient::Model::Payment.find_by_transaction_id(payment_transaction_id,
                                                with_plugin_info,
                                                options)
