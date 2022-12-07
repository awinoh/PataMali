class OrderMakeupController < ApplicationController
    before_action :set_makeup, only: [:show, :update, :destroy]

    # GET /order_makeup
        def index
          @order_makeup = OrderMakeup.all
      
          render json: @order_makeup
        end
      
        # GET /order_makeup/1
        def show
          render json: @order_makeup
        end
      
        # POST /order_makeup
        def create
          @order_makeup = OrderMakeup.new(order_makeup_params)
      
          if @order_makeup.save
            render json: @order_makeup, status: :created, location: @order_makeup
          else
            render json: @order_makeup.errors, status: :unprocessable_entity
          end
        end
      
        # PATCH/PUT /order_makeup/1
        def update
          if @order_makeup.update(order_makeup_params)
            render json: @order_makeup
          else
            render json: @order_makeup.errors, status: :unprocessable_entity
          end
        end
      
        # DELETE /order_makeup/1
        def destroy
          @order_makeup.destroy
        end
      
        private
          # Use callbacks to share common setup or constraints between actions.
          def set_order_makeup
            @order_makeup = OrderMakeup.find(params[:id])
          end
      
          # Only allow a trusted parameter "white list" through.
          def order_makeup_params
            params.require(:order_makeup).permit(:order_id, :makeup_id)
          end
      end
end
