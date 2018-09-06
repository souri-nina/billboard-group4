class SongsController < ApplicationController
  before_action :set_artist

  def index
    @song = Song.new
  end
  
  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to sub_artist_path(@artist.sub_id, @artist)
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @song.update
      redirect_to sub_artist_path(@artist.sub_id, @artist)
    else
      redirect_to :edit
    end
  end

  private
    def set_artist
      @artist = artist.find(params[:artist_id])
    end

    def song_params
      params.require(:song).permit(:artist_name)
    end
    
end