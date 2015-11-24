json.array!(@loanrecoveries) do |loanrecovery|
  json.extract! loanrecovery, :id, :name, :phone, :address, :email
  json.url loanrecovery_url(loanrecovery, format: :json)
end
