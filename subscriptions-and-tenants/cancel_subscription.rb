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
subscription.subscription_id = "21541d56-c34a-4012-990a-2250e2822019"

requested_date = nil
entitlement_policy = nil
billing_policy = nil
use_requested_date_for_billing = nil

subscription.cancel(user,
                    reason,
                    comment,
                    requested_date,
                    entitlement_policy,
                    billing_policy,
                    use_requested_date_for_billing,
                    options)
