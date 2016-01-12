class BookingsController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def index
    @bookings = Booking.all
    @users = User.all
    @gigs = Gig.all
  end

  def new
    @gig = Gig.find(params[:gig_id])
    @booking = Booking.new
  end

  def create
    current_user.bookings.create(booking_params)
    redirect_to bookings_path
  end

  def show
    @bookings == current_user.bookings
  end
    
  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to(bookings_path)
  end

  def destroy
    @booking.destroy
    redirect_to(bookings_path)
  end

  private
  def booking_params
    params.require(:booking).permit(:user_id, :gig_id, :no_of_tickets)
  end

  def load_venue
    @booking = Booking.find(params[:id]) 
  end


end
