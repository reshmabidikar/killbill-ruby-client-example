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


custom_field_id = 'a04adaca-78a4-41fe-b512-a8d620aad456'

subscription.remove_custom_field(custom_field_id,
                                 user,
                                 reason,
                                 comment,
                                 options)
