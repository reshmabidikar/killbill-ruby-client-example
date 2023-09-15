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

ofset = 0
limit = 100

KillBillClient::Model::Admin.trigger_invoice_generation_for_parked_accounts(ofset,
                                                                            limit,
                                                                            user,
                                                                            options)
