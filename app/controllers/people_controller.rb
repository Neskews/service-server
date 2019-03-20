class PeopleController < ApplicationController
    def index
        @people = Person.all.to_json
        render json: @people
    end

    def new
        @person = Person.new(person_params)

        # write to db
        if @person.save
            render json: @person.to_json
        else
            render plain: 'nope'
        end

    end

    def create
        @person = Person.new(person_params)

        @person.save
        render json: @person.to_json
    end

    def show
        render json: Person.all
    end

    def destroy
        @person = Person.find(params[:id])
        @person.destroy

        self.show
    end

    private
        def person_params
            params.permit(:first_name, :last_name)
        end
end
