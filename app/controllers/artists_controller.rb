class ArtistsController < ApplicationController
  
  # before_action :authenticate_user!, except: [:index]
  before_action :load_artist, except:[:index, :new, :create]
  load_and_authorize_resource

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    artist.create(artist_params)
    redirect_to artists_path
  end

  def show
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to(artist_path)
  end

  def destroy
    @artist.destroy
    redirect_to(artists_path)
  end

  private
  def article_params
    params.require(:artist).permit(:title, :description, :image, :genre_id)
  end

  def load_article
    @artist = Artist.find(params[:id]) 
  end
end
