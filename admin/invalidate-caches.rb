require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "invalidate cache"
cache_name = nil
KillBillClient::Model::Admin.invalidates_cache(cache_name, options)

puts "invalidate account cache"
account_id = "7958908b-040a-4e2c-9606-4f1f62ac1c33"
KillBillClient::Model::Admin.invalidates_cache_by_account(account_id, options)

puts "invalidate tenant cache"
KillBillClient::Model::Admin.invalidates_cache_by_tenant(options)

puts "put host in rotation"
KillBillClient::Model::Admin.put_in_rotation(options)

puts "put host out of rotation"
KillBillClient::Model::Admin.put_out_of_rotation(options)

puts "get queue entries"
account_id = "7958908b-040a-4e2c-9606-4f1f62ac1c33"
KillBillClient::Model::Admin.get_queues_entries(account_id, options)




