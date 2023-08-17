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

input = {
           :productName => 'Shotgun',
           :billingPeriod => 'MONTHLY',
           :priceList => 'DEFAULT'
         }

subscription = KillBillClient::Model::Subscription.new
subscription.subscription_id = "21541d56-c34a-4012-990a-2250e2822019"

requested_date = nil
billing_policy = nil
call_completion = false
target_phase_type = nil

subscription.change_plan(input,
                         user,
                         reason,
                         comment,
                         requested_date,
                         billing_policy,
                         target_phase_type,
                         call_completion,
                         options)
