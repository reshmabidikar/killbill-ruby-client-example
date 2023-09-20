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

account_id = "3a949187-a2a0-46b5-8720-fff8b12eabff"

invoice_item = KillBillClient::Model::InvoiceItem.new

invoice_item.item_type = "EXTERNAL_CHARGE"
invoice_item.amount = 50

invoice_items = [invoice_item]


target_date = "2018-03-15"
KillBillClient::Model::Invoice.create_migration_invoice(account_id,
                                                        invoice_items,
                                                        target_date,
                                                        user,
                                                        reason,
                                                        comment,
                                                        options)
