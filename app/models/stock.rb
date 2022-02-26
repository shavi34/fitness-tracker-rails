class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_client[:sandbox_public_api_key],
      secret_token: 'Tsk_c52d78b6c1934ce18624c168aeca2ceb',
      endpoint: 'https://sandbox.iexapis.com/v1'
    )
    client.price(ticker_symbol)
  end
end
