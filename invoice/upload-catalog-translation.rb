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

catalog_translation = 'sports-monthly = Voiture Sport'
locale = "fr_FR"
delete_if_exists = true

KillBillClient::Model::Invoice.upload_catalog_translation(catalog_translation,
                                                          locale,
                                                          delete_if_exists,
                                                          user,
                                                          reason,
                                                          comment,
                                                          options)
