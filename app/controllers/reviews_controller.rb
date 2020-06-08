class ReviewsController < ApplicationController
  def index
    @reviews = {"review": "Wow, this place is so beautiful and amazing and awesome."}
    json_response(@reviews)
  end

  private 
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end