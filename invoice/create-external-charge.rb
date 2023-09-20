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

invoice_item             = KillBillClient::Model::InvoiceItem.new()
invoice_item.account_id  = "3a949187-a2a0-46b5-8720-fff8b12eabff"
invoice_item.amount      = '50.0'
invoice_item.currency    = 'USD'
invoice_item.description = 'My charge'

auto_commit = true

invoice_item.create(auto_commit,
                    user,
                    reason,
                    comment,
                    options)
