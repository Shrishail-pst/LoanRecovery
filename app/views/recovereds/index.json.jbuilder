json.array!(@recovereds) do |recovered|
  json.extract! recovered, :id, :recovered_amount, :recovery_time, :recovery_charges
  json.url recovered_url(recovered, format: :json)
end
