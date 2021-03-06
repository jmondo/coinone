
module Coinone

  class Order

    class TradeResponse

      attr_reader :result
      attr_reader :order_id
      attr_reader :api_response_hash

      def initialize(options={})
        @api_response_hash = options
        @result = options[:result] || nil
        @order_id= nil

        update_response(options)


      end

      def update_response(params={})

        @result = params[:result] if params.has_key? :result
        @order_id = params[:orderId] if params.has_key? :orderId

      end

    end
  end
end
