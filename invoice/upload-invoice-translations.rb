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

invoice_translation = 'invoiceDate = date de facture'
locale = "fr_FR"
delete_if_exists = true
KillBillClient::Model::Invoice.upload_invoice_translation(invoice_translation,
                                                          locale,
                                                          delete_if_exists,
                                                          user,
                                                          reason,
                                                          comment,
                                                          options)

