require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

account_id = "04779ade-11f9-48d1-88a1-a63be84d1cb7"
with_balance = false
with_balance_and_cba = false

account = KillBillClient::Model::Account.find_by_id(account_id,
                   with_balance,
                   with_balance_and_cba,
                   options)
puts "#{account.name}"