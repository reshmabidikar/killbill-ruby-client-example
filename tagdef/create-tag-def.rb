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
tagDefinition.name = "tag_name"
tagDefinition.description = "tag description"
tagDefinition.applicable_object_types = ['BUNDLE', 'SUBSCRIPTION']
tagDefinition.is_control_tag = false

tagDefinition = tagDefinition.create(user,
                    reason,
                    comment,
                    options)

"puts created tagdef #{tagDefinition}"
