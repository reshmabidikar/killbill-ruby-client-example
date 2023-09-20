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

invoice_item                 = KillBillClient::Model::InvoiceItem.new
invoice_item.account_id      = "3a949187-a2a0-46b5-8720-fff8b12eabff"
invoice_item.invoice_id      = "5c6083c1-a673-4b67-9b86-74139df50448"
invoice_item.invoice_item_id = "14b0de07-6634-4e56-9062-156ba8e6c06d"
invoice_item.amount          = 10.00
invoice_item.currency        = 'USD'
invoice_item.description     = 'Free adjustment: good customer'

invoice_item.update(user,
                    reason,
                    comment,
                    options)
