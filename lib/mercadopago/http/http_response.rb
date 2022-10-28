module Mercadopago
  class HttpResponse
    attr_reader :status, :message

    def initialize(status, message)
      @status = status
      @message = JSON.parse(message)
    end

    def success?
      status.between?(200, 299)
    end
  end
end
