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
invoice_item.invoice_id      = "23c7864d-612d-4df1-9dfe-7ff48f468d2b"
invoice_item.invoice_item_id = "b57ad830-0c6a-4ea1-a8e2-1eb9a26fd3dd"

invoice_item.delete(user,
                    reason,
                    comment,
                    options)
