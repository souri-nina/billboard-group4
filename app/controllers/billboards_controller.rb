class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :update, :edit, :destroy]
  before_action :set_artist

  def index
    @billboards = Billboard.all
  end

  def show
    @artists = @billboard.artists

  end

  def edit
    
    render partial: "form"
  end

  def new
    @billboard = Billboard.new
    render partial: "form"
  end

  def create
    @billboard = Billboard.new(billboard_params)
    
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

    def set_artist
      @artist = Artist.find(params[:id])
    end


    def billboard_params
      params.require(:billboard).permit(:title, :artist_name, :song_name)
    end

end
