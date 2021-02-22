class CharactersController<ApplicationController
    def index
        
    end
    def new
                
    end
    def create
        puts params
        @character = Character.create(character_params)
        puts@character
        redirect_to character_path(@character)
    end
    def show
        @character = Character.find(params[:id])

    end
    def edit
        @character = Character.find(params[:id])
        render 'edit'
    end
    def update

    end
    def delete

    end

    private

  def character_params
    params.require(:character).permit(:name,:color,:catchphrase,:species)
  end
    
end