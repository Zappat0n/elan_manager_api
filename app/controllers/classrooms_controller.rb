class ClassroomsController < ApplicationController
  # GET /classrooms
  def index
    @classrooms = Classroom.all
    render json: @classrooms
  end
end
