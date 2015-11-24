json.array!(@banks) do |bank|
  json.extract! bank, :id, :name, :address, :contact_number, :branch, :email
  json.url bank_url(bank, format: :json)
end
