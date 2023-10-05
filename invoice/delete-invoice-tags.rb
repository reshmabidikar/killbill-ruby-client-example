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

tag_name = 'WRITTEN_OFF'

invoice.remove_tag(tag_name,
                  user,
                  reason,
                  comment,
                  options)
