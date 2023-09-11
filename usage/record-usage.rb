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

usage_record = KillBillClient::Model::UsageRecordAttributes.new
usage_record.amount = 1
usage_record.record_date = "2023-08-15"

unit_usage_record = KillBillClient::Model::UnitUsageRecordAttributes.new
unit_usage_record.unit_type = "hours"
unit_usage_record.usage_records = []
unit_usage_record.usage_records << usage_record

result = KillBillClient::Model::UsageRecord.new
result.subscription_id = "dc89f346-bc55-46ee-8963-1b666d8fea50"
result.unit_usage_records = []
result.unit_usage_records << unit_usage_record

result.create(user, nil, nil, options)
