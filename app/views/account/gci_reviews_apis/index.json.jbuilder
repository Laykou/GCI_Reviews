json.array!(@account_gci_reviews_apis) do |account_gci_reviews_api|
  json.extract! account_gci_reviews_api, :id
  json.url account_gci_reviews_api_url(account_gci_reviews_api, format: :json)
end
