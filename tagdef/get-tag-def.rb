require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

puts "get all tag definitions"

audit = 'NONE'

tag_definitions = KillBillClient::Model::TagDefinition.all(audit, options)
puts "tag_definitions is #{tag_definitions}"

puts "get tag definition by Id"

tag_definition_id = "30363fe5-310d-4446-b000-d7bb6e6662e2"
audit = 'NONE'

tag_definition = KillBillClient::Model::TagDefinition.find_by_id(tag_definition_id, audit, options)
puts "tag_definitions is #{tag_definition.name}"

puts "get tag def logs"
tag_definition = KillBillClient::Model::TagDefinition.new
tag_definition.id = "2a4b9f36-6a53-4553-a2ef-d0bddf8e831a"

audit_logs = tag_definition.audit_logs_with_history(options)
puts "logs #{audit_logs}"

