class OffersController < ApplicationController
    def index 
        @offers = Offer.all

        render json: @offers
    end

    def new
        @offer = Offer.new(params[:offer])
        puts @offer

        if @offer.save
            render json: {
                message: "success"
            }
        else 
            render json: {
                message: "fail"
            }
        end
    end

    def show 
        render json: Offer.all
    end

    def destroy
        @offer = Offer.where(params[:id])
        puts @offer.to_json
        if @offer.exists?
            if @offer.destroy
                render plain: "ok"
            else
                render plain: "no"
            end
        else
            render plain: "no offer found"
        end
    end
end
