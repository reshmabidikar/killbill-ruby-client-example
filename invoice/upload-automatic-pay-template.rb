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

invoice_template = "Some_HTML_String"
is_manual_pay = false
delete_if_exists = true
KillBillClient::Model::Invoice.upload_invoice_template(invoice_template,
                                                       is_manual_pay,
                                                       delete_if_exists,
                                                       user,
                                                       reason,
                                                       comment,
                                                       options)
