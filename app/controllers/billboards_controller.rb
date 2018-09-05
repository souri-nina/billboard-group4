class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :update, :edit, :destroy]

  
  def index
    @billboards = Billboard.all
  end

  def show


  end

  def edit
  end

  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = Billoard.new(billboard_params)
    
    if @billboard.save
      redirect_to billboards_path
    else
      render :new
    end
  end


  def update
    if @billboard.update(billboard_params)
      redirect_to @billboard
    else
      render :edit
    end
  end

  def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

  private
     def set_billboard
      @billboard = Billboard.find(params[:id])
    end

    def billboard_params
      params.require(:billboard).permit(:title :artist_name :song)
    end

end
