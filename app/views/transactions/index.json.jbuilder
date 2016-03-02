json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :payee, :amount, :date, :account_type
  json.url transaction_url(transaction, format: :json)
end
