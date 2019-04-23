class BadgesController < ApplicationController
    def index
        @badges = Badge.all
        render json: @badges
    end

    def new 
        @badge = Badge.new(badge_params)

        # write to db
        if @badge.save
            render json: @badge.to_json
        else
            render plain: 'nope'
        end
    end

    def destroy
        @badge = Badge.find(params[:id])
        @badge.destroy

        self.index
    end

    private
        def badge_params
            params.permit(:name, :description, :score)
        end
end
