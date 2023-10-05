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

invoice = KillBillClient::Model::Invoice.new
invoice.invoice_id = '7bf0f3d6-4ffb-4d5a-98c7-1158083432d0'

custom_field_id = 'ec53d741-e52a-4860-a6d3-03bb22b24a90'

invoice.remove_custom_field(custom_field_id,
                            user,
                            reason,
                            comment,
                            options)
