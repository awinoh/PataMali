class MakeupController < ApplicationController
    before_action :set_makeup, only: [:show, :update, :destroy]
  
    # GET /makeup
    def index
      @makeup = Makeup.all
  
      render json: @makeup
    end
  
    # GET /makeup/1
    def show
      render json: @makeup
    end
  
    # POST /makeup
    def create
      @makeup = Makeup.new(makeup_params)
  
      if @makeup.save
        render json: @makeup, status: :created, location: @makeup
      else
        render json: @makeup.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /makeup/1
    def update
      if @makeup.update(makeup_params)
        render json: @makeup
      else
        render json: @makeup.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /makeup/1
    def destroy
      @makeup.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_makeup
        @makeup = Makeup.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def makeup_params
        params.require(:makeup).permit(:name, :description, :status, :image, :price, :user_id)
      end
  end
