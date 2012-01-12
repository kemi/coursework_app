class SpeciesController < ApplicationController
 before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :admin_user, :only => :destroy

def new
   @specie = Species.new
   @title = "Recording Tools"
   end

  def create
   @specie  = Species.new(params[:specie])
   if @specie.save
      flash[:success] = "Specie Record created!"
      redirect_to @specie
    else
      @title = "Sign Up"
      render 'new'
    end
  #end
  end
def edit
@specie = Species.find(params[:id])
@title = "Edit species"
end

def update
   @specie = Species.find(params[:id])
   if @specie.update_attribute(params[:species])
      flash[:success] = "Species updated!"
      redirect_to @specie
    else
      @title = "Edit Species"
      render 'edit'
    end
  #end
  end
def index
@title = "All species"
@specie = Species.paginate(:page => params[:page])
end


def show
@specie = Species.find(params[:id])
@title = Species.new
end


  def destroy
    Specie.find(params[:id]).destroy
    flash[:success] = "Species Destroyed"
    redirect_to species_path
  end

  private

    def authenticate
      
    end
def admin_user
    redirect_to(root_path) unless current_user.admin?
end
end





