require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

subscription = KillBillClient::Model::Subscription.new
subscription.subscription_id = "2207150d-0652-43eb-abbe-2cbd0092b744"

audit = 'NONE'
fields = subscription.custom_fields(audit, options)
puts "#{fields}"

