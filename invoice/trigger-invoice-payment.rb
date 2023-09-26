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

payment = KillBillClient::Model::InvoicePayment.new
payment.account_id = "a24a1b9f-9d0f-4311-ad05-feac80f7b177"
payment.target_invoice_id = "bb9cf385-cc78-46a6-b069-924bdfdeb4f7"
payment.purchased_amount = '50.0'

external_payment = true

payment.create(external_payment,
               user,
               reason,
               comment,
               options)
