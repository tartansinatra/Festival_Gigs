class BookingsController < ApplicationController

  before_action :authenticate_user!, except: [:index]
  before_action :load_booking, except:[:index, :new, :create]
  load_and_authorize_resource

  def index
    @bookings = current_user.bookings
    @users = User.all
    @gigs = Gig.all
  end

  def new
    @gig = Gig.find(params[:gig_id])
    @booking = Booking.new
  end

  def create
    booking = Booking.new(booking_params)
    gig = booking.gig
    if booking.no_of_tickets + Booking.total_tickets_sold(gig.id) >= gig.capacity
    flash[:alert] = "No can do!"
    redirect_to root_path  
    else
    current_user.bookings.create(booking_params)
    redirect_to bookings_path
    end
  end

  def show
    @bookings = current_user.bookings
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

  def load_booking
    @booking = Booking.find(params[:id]) 
  end


end
