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

account_id = "13102713-9672-4e3b-8b4f-e10869fc5a59"
target_date = "2024-12-05"

KillBillClient::Model::Invoice.trigger_invoice(account_id,
                                               target_date,
                                               user,
                                               reason,
                                               comment,
                                               options)