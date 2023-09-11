require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "list tags"

offset = 0
limit = 100
tags = KillBillClient::Model::Tag.find_in_batches(offset, limit, options)
puts "#{tags}"


puts "search tag"

search_key="ACCOUNT"
offset = 0
limit = 100
tags = KillBillClient::Model::Tag.find_in_batches_by_search_key(search_key, offset, limit, options)
puts "#{tags}"

puts "get tags audit logs"

tag = KillBillClient::Model::Tag.new
tag.tag_id = "7e7f6af6-a844-4ce0-b7d1-f258290d8ad4"

audit_logs = tag.audit_logs_with_history(options)
puts "logs #{audit_logs}"
