json.extract! merchant_application, :id, :first_name, :last_name, :company, :phone_number, :website, :created_at, :updated_at
json.url merchant_application_url(merchant_application, format: :json)