require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "list"
offset = 0
limit = 100

payment_methods = KillBillClient::Model::PaymentMethod.find_in_batches(offset,
                               limit,
                               options)

puts "payment_method is #{payment_methods}"
puts "search"

search_key = 'braintree'
offset = 0
limit = 100

payment_methods = KillBillClient::Model::PaymentMethod.find_in_batches_by_search_key(search_key,
                                             offset,
                                             limit,
                                             options)
puts "payment_method is #{payment_methods}"