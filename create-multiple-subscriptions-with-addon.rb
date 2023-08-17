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

bulk_subscription_list = [
                            {
                               "baseEntitlementAndAddOns":[
                                  {
                                     "accountId":"e3a23520-2ce2-493a-a3c0-7fc08e554353",
                                     "productCategory":"BASE",
                                     "productName":"Pistol",
                                     "billingPeriod":"MONTHLY",
                                     "priceList":"notrial"
                                  },
                                  {
                                     "accountId":"e3a23520-2ce2-493a-a3c0-7fc08e554353",
                                     "productCategory":"ADD_ON",
                                     "productName":"Cleaning",
                                     "billingPeriod":"MONTHLY",
                                     "priceList":"DEFAULT"
                                  }
                               ]
                            },
                            {
                               "baseEntitlementAndAddOns":[
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
                            },

                         ]
entitlement_date = nil
billing_date = nil
call_completion_sec = nil

KillBillClient::Model::BulkSubscription.create_bulk_subscriptions(bulk_subscription_list,
                                                                  user,
                                                                  reason,
                                                                  comment,
                                                                  entitlement_date,
                                                                  billing_date,
                                                                  call_completion_sec,
                                                                  options)
