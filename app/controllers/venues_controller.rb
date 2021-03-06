class VenuesController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :load_venue, except:[:index, :new, :create]
  load_and_authorize_resource

  def index
    @venues = Venue.all
    @venues = Venue.order("name")
  end

  def new
    @venue = Venue.new
  end

  def create
    Venue.create(venue_params)
    redirect_to venues_path
  end

  def show
  end

  def edit
  end

  def update
    @venue.update(venue_params)
    flash[:alert] = "You have updated this Venue."
    redirect_to(venues_path)
  end

  def destroy
    @venue.destroy
    redirect_to(venues_path)
  end

  private
  def venue_params
    params.require(:venue).permit(:name, :add_1, :add_2, :town, :postcode, :image)
  end

  def load_venue
    @venue = Venue.find(params[:id]) 
  end

end