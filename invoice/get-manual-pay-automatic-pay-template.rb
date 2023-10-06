require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "get manual pay template"

locale = "fr_FR"
is_manual_pay = true

template = KillBillClient::Model::Invoice.get_invoice_template(is_manual_pay, locale, options)
puts "#{template}"

puts "get automatic pay template"
locale = "fr_FR"
is_manual_pay = false

template = KillBillClient::Model::Invoice.get_invoice_template(is_manual_pay, locale, options)
puts "#{template}"