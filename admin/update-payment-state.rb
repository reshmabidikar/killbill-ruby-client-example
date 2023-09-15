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

payment_id = "770d7802-9e03-45dc-a16a-dc58ddcb44d1"
transaction_id = "f20e1bca-8c3e-4a8f-b411-27f4362f858b"
transaction_status = "PAYMENT_FAILURE"

KillBillClient::Model::Admin.fix_transaction_state(payment_id,
                                                   transaction_id,
                                                   transaction_status,
                                                   user,
                                                   reason,
                                                   comment,
                                                   options)
