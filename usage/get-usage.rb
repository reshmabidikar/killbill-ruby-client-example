require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "usages for sub and unit type"
subscription_id = "dc89f346-bc55-46ee-8963-1b666d8fea50"
start_date = "2023-09-01"
end_date = "2023-09-30"
unit_type = "hours"

usages = KillBillClient::Model::RolledUpUsage.find_by_subscription_id_and_type(subscription_id,
                                                                      start_date,
                                                                      end_date,
                                                                      unit_type,
                                                                      options)
puts usages.inspect

puts "usages for sub"
subscription_id = "dc89f346-bc55-46ee-8963-1b666d8fea50"
start_date = "2023-09-01"
end_date = "2023-09-30"

usages = KillBillClient::Model::RolledUpUsage.find_by_subscription_id(subscription_id,
                                                             start_date,
                                                             end_date,
                                                             options)
puts usages.inspect