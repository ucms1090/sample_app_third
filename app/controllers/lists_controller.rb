class ListsController < ApplicationController
  def new
    @list=List.new
  end

  def create
    @list=List.new(lp)
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :new
      # redirect_to lists_path
    end
  end

  def index
    @list=List.all
    # @lists=List.all
  end

  def show
    @findlist=List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list=List.find(params[:id])
    list.update(lp)
    redirect_to list_path(list.id)
  end
  
  def destroy
    list=List.find(params[:id])
    list.destroy
    redirect_to '/lists'
    # (list.id)
  end
    
  
  
  private
  
  def lp
    params.require(:list).permit(:title, :body, :image)
  end
  
  
end
