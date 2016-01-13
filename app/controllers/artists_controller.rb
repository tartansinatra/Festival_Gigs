class ArtistsController < ApplicationController
  
  before_action :authenticate_user!, except: [:index]
  before_action :load_artist, except:[:index, :new, :create]
  

  def index
    @artists = Artist.all
    if params[:search]
      @artist = Artist.search(params[:search]).order("created_at DESC")
    else
      @artist = Artist.all.order("created_at DESC")
    end
  end
  

  def new
    @artist = Artist.new
  end

  def create
    Artist.create(artist_params)
    redirect_to artists_path
  end

  def show
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to(artists_path)
  end

  def destroy
    @artist.destroy
    redirect_to(artists_path)
  end

  


  private
  def artist_params
    params.require(:artist).permit(:title, :description, :image, :genre_id)
  end

  def load_artist
    @artist = Artist.find(params[:id]) 
  end
end
