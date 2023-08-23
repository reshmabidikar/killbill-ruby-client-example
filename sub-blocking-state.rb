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
subscription.subscription_id = "161692a4-c293-410c-a92f-939c5e3dcba7"

state_name = 'STATE1'
service = 'ServiceStateService'
block_change = false
block_entitlement = false
block_billing = false
requested_date = nil

subscription.set_blocking_state(state_name,
                                service,
                                block_change,
                                block_entitlement,
                                block_billing,
                                requested_date,
                                user,
                                reason,
                                comment,
                                options)