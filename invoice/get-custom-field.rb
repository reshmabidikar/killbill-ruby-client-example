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

audit = 'NONE'

custom_fields = invoice.custom_fields(audit, options)

puts "#{custom_fields}"
