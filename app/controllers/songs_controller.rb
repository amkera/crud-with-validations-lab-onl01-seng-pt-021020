class SongsController < ApplicationController
  
  def index 
    @songs = Song.all 
  end 
  
  def show 
    find_song
  end 
  
  def edit 
    find_song
  end 
  
  def new 
    @song = Song.new 
  end 
  
  def create 
    @song = Song.new(song_params)
  
  
  private 
  def find_song 
    @song = Song.find(params[:id])
  end 
  
  def song_params 
    params.require(:song).permit(
      :title, :release_year, :released, :genre, :artist_name
    )
  end
  
end
