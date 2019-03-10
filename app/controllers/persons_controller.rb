class PersonsController < ApplicationController
    def index
        @persons = Person.all.to_json
        render json: @persons
    end

    def new
        @person = Person.new(params[:person])

        if @person.save
            render json: {
                message: "successfully created a new person"
            }
        else
            render json: {
                message: "failed creating a new person"
            }
        end
    end

    def create
        @person = Person.new(params[:person])
    end

    def show
        render json: Person.all
    end

    def destroy
        @person = Person.find(params[:id])
        @person.destroy
        
        render json: Person.all
    end

    private
        def person_params
            params.require(:person).permit(:name)
        end
end
