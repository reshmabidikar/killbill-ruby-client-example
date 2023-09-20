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

invoice = KillBillClient::Model::Invoice.new
invoice.invoice_id = "6b877adc-0916-4409-ba95-f4e955772ea6"

invoice.void(user,
               reason,
               comment,
               options)
