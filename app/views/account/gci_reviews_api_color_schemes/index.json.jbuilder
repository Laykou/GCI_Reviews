json.array!(@account_gci_reviews_api_color_schemes) do |account_gci_reviews_api_color_scheme|
  json.extract! account_gci_reviews_api_color_scheme, :id
  json.url account_gci_reviews_api_color_scheme_url(account_gci_reviews_api_color_scheme, format: :json)
end
