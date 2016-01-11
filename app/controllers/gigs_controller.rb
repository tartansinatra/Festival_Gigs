class GigsController < ApplicationController
  
  before_action :load_gig, except:[:index, :new, :create]

  def index
    @gigs = Gig.all
    @artists = Artist.all
    @venues = Venue.all
  end

  def new
    @gig = Gig.new
  end

  def create
    Gig.create(gig_params)
    redirect_to gigs_path
  end

  def show
  end

  def edit
  end

  def update
    @gig.update(gig_params)
    redirect_to(gigs_path)
  end

  def destroy
    gig.destroy
    redirect_to(gigs_path)
  end

  private
  def gig_params
    params.require(:gig).permit(:start_date, :end_date, :capacity, :artist_id, :venue_id)


  end

  def load_gig
    @gig = Gig.find(params[:id]) 
  end

end