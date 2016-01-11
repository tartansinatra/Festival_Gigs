class GigsController < ApplicationController
  
  before_action :load_gig, except:[:index, :new, :create]

  def index
    @gigs = Gig.all
  end

  def new
    @gig = Gig.new
  end

  def create
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
    params.require(:gig).permit(:date, :time, :capacity, :artist_id, :venue_id)
  end


end