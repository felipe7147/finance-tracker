class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: 'Tpk_cec46bd0be284ce89b9815029949963f',
                                  secret_token: 'Tsk_6ecfecbe89f349ce8962ebb7cab6d21a',
                                  endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol)
  end
end
