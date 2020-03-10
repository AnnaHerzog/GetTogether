class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @current_page = "activities"
    if params[:address].nil?
      @activities = policy_scope(Activity).geocoded
    elsif params[:address].present?
      @activities = policy_scope(Activity).geocoded.near(params[:address], 5)
      @activities = @activities.search(params[:activity]) unless params[:activity].nil? || params[:activity].empty?
      @activities = @activities.where(category: params[:category]) unless params[:category].nil? || params[:category].empty?
    elsif params[:category].present?
      @activities = policy_scope(Activity).where(category: params[:category]) unless params[:category].nil? || params[:category].empty?
    elsif params[:activity].present?
      @activities = policy_scope(Activity).search(params[:activity]) unless params[:activity].nil? || params[:activity].empty?
    else
      @activities = policy_scope(Activity).geocoded #returns activitys with coordinates
    end
    # Mapbox Code
      # @activities = Activity.geocoded #returns activitys with coordinates
      # @markers = @activities.map do |activity|
      #   {
      #     lat: activity.latitude,
      #     lng: activity.longitude,
      #     infoWindow: render_to_string(partial: "info_window", locals: { activity: activity }),
      #   }
      # end
    # Mapbox Code
  end

  def show
    # authorize @office
    @activity = Activity.find(params[:id])
    @booking = Booking.new
    # authorize @booking

    # Mapbox Code
    @marker = {
        lat: @activity.latitude,
        lng: @activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { activity: @activity })
      }
  end
  # Mapbox Code

  def new
    @current_page = "new activity"
    @user = current_user
    @activity = Activity.new
    authorize @activity
  end

  def create
    # params[:search][:category] = params[:search][:category].reject(&:empty?)
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    authorize @activity
    @activity.save
    redirect_to activity_path(@activity)
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
    authorize @activity
  end

  def activity_params
    params.require(:activity).permit(:datetime, :name, :capacity, :address, :description, :category, :user_id, photos: [])
  end

end
