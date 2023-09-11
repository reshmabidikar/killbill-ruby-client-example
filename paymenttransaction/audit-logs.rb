require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

payment_transaction = KillBillClient::Model::Transaction.new
payment_transaction.transaction_id = "e5f000f7-0733-4828-a887-3a4a58d27596"

audit_logs = payment_transaction.audit_logs_with_history(options)
puts "logs #{audit_logs}"