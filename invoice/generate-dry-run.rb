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

#
# This case is when you create a dry-run invoice with UPCOMING_INVOICE,
# to see what is the next invoice that the system will generate for this account
#
account_id = "5d0df708-ddf8-4c35-b42e-a0d67e2c9c0f"
target_date = nil
upcoming_invoice_target_date = true

invoice_dry_run = KillBillClient::Model::Invoice.trigger_invoice_dry_run(account_id,
                                                       target_date,
                                                       upcoming_invoice_target_date,
                                                       options)
puts "invoice_dry_run #{invoice_dry_run.invoice_id}"
