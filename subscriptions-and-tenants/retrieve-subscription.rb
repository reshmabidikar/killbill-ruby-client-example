require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

# retrive subscription by id
puts "retrieving subscription by id"

subscription_id = "bcbbcdc9-5dff-4a60-ac10-1b289a390b03"

subscription = KillBillClient::Model::Subscription.find_by_id(subscription_id, options)
puts "subscription is #{subscription.subscription_id}"

# retrive subscription by key
puts "retrieving subscription by key"

external_key = "bcbbcdc9-5dff-4a60-ac10-1b289a390b03"
subscription = KillBillClient::Model::Subscription.find_by_external_key(external_key, options)

puts "subscription is #{subscription.subscription_id}"
