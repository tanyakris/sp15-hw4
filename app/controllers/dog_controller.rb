class DogController < ApplicationController
  def index
	   @dogs = Dog.all
	end

  def show
    @dog = Dog.find(params[:id])
  end

	def new
		@dog = Dog.new
	end

	def create
	    @dog = Dog.create(parameters)
	    if @dog.save
	      redirect_to @dog
	    else
	      render "new"
	    end
  	end



	def parameters
    params.require(:dog).permit(:name, :age)
  	end
end
