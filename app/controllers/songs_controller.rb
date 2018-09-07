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

  # def destroy
  #   song = @artist.songs.find(params[:id])
  #   song.destroy
  #   redirect_to billboards_path

  # end

  private

    # def set_song
    #   @song = artist_songs_path(params[:artist_id])
    # end
    def set_artist
      @artist = artist.find(params[:artist_id])
    end

    def song_params
      params.require(:song).permit(:artist_name)
    end
    
end