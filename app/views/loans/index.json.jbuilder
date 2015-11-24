json.array!(@loans) do |loan|
  json.extract! loan, :id, :loan_id, :loan_amount, :amount_paid, :loan_type, :interest_rate
  json.url loan_url(loan, format: :json)
end
