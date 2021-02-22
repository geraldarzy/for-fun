class PeopleController < ApplicationController
    

    def index

    end

    def new
        @person = Person.new
    end

    def create
        @person = Person.create(people_params(:name))
        redirect_to person_path(@person)
    end

    def show
        if Person.all.ids.include?(params[:id].to_i)
            @person = Person.find(params[:id])
            @person.destroy
        else
            redirect_to new_person_path
        end
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private
    def people_params(*args)
        params.require(:person).permit(*args)
    end

end
