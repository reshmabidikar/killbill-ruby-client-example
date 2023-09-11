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

payment_method = KillBillClient::Model::PaymentMethod.new
payment_method.payment_method_id = "06e5c871-3caf-41c2-9d7e-30c95f6e309c"


custom_field = KillBillClient::Model::CustomFieldAttributes.new
custom_field.name = 'Test Custom Field'
custom_field.value = 'test_value'

payment_method.add_custom_field(custom_field,
                                user,
                                reason,
                                comment,
                                options)
