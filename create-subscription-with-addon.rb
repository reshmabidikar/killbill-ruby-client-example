require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}



puts "create sub with addon"

user = "demo"
reason = nil
comment = nil

entitlement = [
                {
                    "accountId":"e3a23520-2ce2-493a-a3c0-7fc08e554353",
                    "productCategory":"BASE",
                    "productName":"Shotgun",
                    "billingPeriod":"MONTHLY",
                    "priceList":"DEFAULT"
                },
                {
                    "accountId":"e3a23520-2ce2-493a-a3c0-7fc08e554353",
                    "productCategory":"ADD_ON",
                    "productName":"Telescopic-Scope",
                    "billingPeriod":"MONTHLY",
                    "priceList":"DEFAULT"
                }
             ]

requested_date = nil
entitlement_date = nil
billing_date = nil
migrated = false
call_completion_sec = 3

subscription = KillBillClient::Model::Subscription.new
subscription.create_entitlement_with_add_on(entitlement,
                                            requested_date,
                                            entitlement_date,
                                            billing_date,
                                            migrated,
                                            call_completion_sec,
                                            user,
                                            reason,
                                            comment,
                                            options)



