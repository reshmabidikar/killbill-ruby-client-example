require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

invoice = KillBillClient::Model::Invoice.new
invoice.invoice_id = '7bf0f3d6-4ffb-4d5a-98c7-1158083432d0'

included_deleted = false
audit = 'NONE'

tags = invoice.tags(included_deleted,
             audit,
             options)

puts "#{tags}"