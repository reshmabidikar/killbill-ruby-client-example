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
subscription.subscription_id = "92820d1c-1d4c-46eb-9010-26b0626a1927"

included_deleted = false
audit = 'NONE'

tags = subscription.tags(included_deleted,
                  audit,
                  options)
puts "#{tags}"