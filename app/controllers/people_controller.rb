class PeopleController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_person, only: [:show, :edit, :update, :destroy]

    # GET /people
    # GET /people.json
    def index
        @people = Person.all
    end

    # GET /people/1
    # GET /people/1.json
    def show
    end

    # GET /people/new
    def new
        @person = Person.new
    end

    # GET /people/1/edit
    def edit
    end

    # POST /people
    # POST /people.json
    def create
        @person = Person.new(person_params)

        respond_to do |format|
            if @person.save
                format.html { redirect_to @person, notice: 'Person was successfully created.' }
                format.json { render :show, status: :created, location: @person }
            else
                format.html { render :new }
                format.json { render json: @person.errors, status: :unprocessable_entity}
            end
        end
    end

    # PATCH/PUT /person
    def update
        respond_to do |format|
            if @person.update(person_params)
                format.html { redirect_to @person, notice: 'Person was successfully updated. '}
                format.json { render :show, status: :ok, location: person }
            else
                format.html { render :edit }
                format.json { render json: @person.errors, status: :unprocessable_entity }
            end
        end
    end

    private
        def set_person
            @person = Person.find(params[:id])
        end

        def person_params
            params.require(:person).permit(:first_name, :last_name, :points)
        end
end
