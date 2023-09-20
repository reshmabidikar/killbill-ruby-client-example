require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "Get invoice by id"

invoice_id = "5c6083c1-a673-4b67-9b86-74139df50448"
audit = 'NONE'

invoice = KillBillClient::Model::Invoice.find_by_id(invoice_id,
                                          audit,
                                          options)
puts "invoice by id #{invoice.invoice_id}"

puts "Get invoice by number"

invoice_number = "7318"
audit = 'NONE'

invoice = KillBillClient::Model::Invoice.find_by_number(invoice_number,
                                              audit,
                                              options)
puts "invoice by number #{invoice.invoice_id}"

puts "Get invoice by item id"

invoice_item_id = "14b0de07-6634-4e56-9062-156ba8e6c06d"
with_children_items = false
audit = 'NONE'

invoice = KillBillClient::Model::Invoice.find_by_invoice_item_id(invoice_item_id,
                                                       with_children_items,
                                                       audit,
                                                       options)

puts "invoice by item id #{invoice.invoice_id}"

puts "get invoice HTML"

invoice_id = "5c6083c1-a673-4b67-9b86-74139df50448"
invoiceHTML = KillBillClient::Model::Invoice.as_html(invoice_id, options)

puts "invoice html #{invoiceHTML}"
