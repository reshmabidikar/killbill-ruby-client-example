require 'killbill_client'

KillBillClient.url = 'http://127.0.0.1:8080'

# Multi-tenancy and RBAC credentials
options = {
  :username => 'admin',
  :password => 'password',
  :api_key => 'bob',
  :api_secret => 'lazar'
}

locale = "fr_FR"
translations = KillBillClient::Model::Invoice.get_catalog_translation(locale,
                                                       options)
puts "#{translations}"