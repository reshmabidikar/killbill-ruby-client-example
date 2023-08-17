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

subscription                      = KillBillClient::Model::Subscription.new
subscription.subscription_id      = "bcbbcdc9-5dff-4a60-ac10-1b289a390b03"
subscription.bill_cycle_day_local = 16

effective_from_date  = nil
force_past_effective_date = nil

subscription.update_bcd(user,
                        reason,
                        comment,
                        effective_from_date,
                        force_past_effective_date,
                        options)
