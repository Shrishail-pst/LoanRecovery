json.array!(@bills) do |bill|
  json.extract! bill, :id, :bill_id, :amount_paid, :remained_amount, :remained_time
  json.url bill_url(bill, format: :json)
end
