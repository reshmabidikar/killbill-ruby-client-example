require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "Get invoice audit logs"
invoice = KillBillClient::Model::Invoice.new
invoice.invoice_id = "bb9cf385-cc78-46a6-b069-924bdfdeb4f7"

audit_logs = invoice.audit_logs_with_history(options)
puts "logs #{audit_logs}"

puts "get invoice item audit logs"
invoice_item = KillBillClient::Model::InvoiceItem.new
invoice_item.invoice_item_id = "6f3d5bd3-f8b3-4615-9940-5a15a5060fb5"

audit_logs = invoice_item.audit_logs_with_history(options)
puts "logs #{audit_logs}"

puts "list invoices"
offset = 0
limit = 100

invoices = KillBillClient::Model::Invoice.find_in_batches(offset,
                        limit,
                        options)
puts "invoices #{invoices}"

puts "search invoices"
search_key = '3135'
offset = 0
limit = 100

invoices = KillBillClient::Model::Invoice.find_in_batches_by_search_key(search_key,
                                      offset,
                                      limit,
                                      options)
puts "invoices #{invoices}"