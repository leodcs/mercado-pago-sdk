module Mercadopago
  class HttpResponse
    attr_reader :status, :body

    def initialize(status, body)
      @status = status
      @body = JSON.parse(body)
    end

    def success?
      status.between?(200, 299)
    end
  end
end
