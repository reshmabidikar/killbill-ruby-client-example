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

subscription = KillBillClient::Model::Subscription.new
subscription.subscription_id = "2207150d-0652-43eb-abbe-2cbd0092b744"


custom_field_id = 'cda969c3-1092-4702-b155-05d0ef899fa2'
custom_fields_list = ['cda969c3-1092-4702-b155-05d0ef899fa2', '66af322c-3fbb-4f37-9384-66b7ecea7863']

subscription.remove_custom_field(custom_fields_list,
                                 user,
                                 reason,
                                 comment,
                                 options)
