# typed: true
# frozen_string_literal: true

module Mercadopago
  ###
  # This class provides the methods to access the API that will allow you to create your own payment experience on your website.

  # From basic to advanced configurations, you control the whole experience.

  # [Click here for more infos](https://www.mercadopago.com.br/developers/en/guides/online-payments/checkout-api/introduction/)

  class Subscription < MPBase
    def create(data, request_options: nil)
      raise TypeError, 'Param data must be a Hash' unless data.is_a?(Hash)

      _post(uri: '/preapproval/', data: data, request_options: request_options)
    end

    def get(subscription_id, request_options: nil)
      _get(uri: "/preapproval/#{subscription_id}", request_options: request_options)
    end
  end
end
