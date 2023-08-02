require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

# Audit log data
user = 'me'
reason = 'Going through my first tutorial'
comment = 'I like it!'

# Create an account
account = KillBillClient::Model::Account.new
account.name = 'John Doe'
account.first_name_length = 4
# account.external_key = 'john-doe'
account.currency = 'USD'
account = account.create(user, reason, comment, options)
