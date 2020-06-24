class SongsController < ApplicationController
  
  def index 
    @songs = Song.all 
  end 
  
  def show 
  end 
  
  private 
  def find_song 
    @song = Song.find(params[:id])
  end 
  
end
