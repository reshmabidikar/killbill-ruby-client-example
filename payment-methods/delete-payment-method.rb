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

payment_method_id = "71d9c12a-2ace-41e6-84bc-a8b11ff807b8"
set_auto_pay_off = false
force_default_deletion = false
KillBillClient::Model::PaymentMethod.destroy(payment_method_id,
                                             set_auto_pay_off,
                                             force_default_deletion,
                                             user,
                                             reason,
                                             comment,
                                             options)
