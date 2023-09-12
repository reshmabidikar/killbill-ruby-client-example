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

tagDefinition = KillBillClient::Model::TagDefinition.new
tagDefinition.id = "2b9d7197-f6a0-4d5f-a0ad-1e3c3e22a0ce"

tagDefinition.delete(user, reason, comment, options);