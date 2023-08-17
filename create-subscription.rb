require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

# create subscription
puts "creating subscription"

user = "demo"
reason = nil
comment = nil

subscription              = KillBillClient::Model::Subscription.new
subscription.account_id   = "e3a23520-2ce2-493a-a3c0-7fc08e554353"
subscription.plan_name    = "pistol-monthly-notrial"

requested_date  = nil
call_completion = nil

subscription = subscription.create(user,
                    reason,
                    comment,
                    requested_date,
                    call_completion,
                    options)
puts "subscription created #{subscription.subscription_id}"