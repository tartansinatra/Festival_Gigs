class BookingsController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def index
    @bookings = Booking.all
    @users = User.all
    @gigs = Gig.all
  end

  def new
    @booking = Booking.new
  end

  def create
    Booking.create(booking_params)
    redirect_to bookings_path
  end

  def show
  end
    
  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to(bookings_path)
  end

  def destroy
    @artist.destroy
    redirect_to(artists_path)
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :gig_id)
  end

  def load_venue
    @booking = Booking.find(params[:id]) 
  end


end
