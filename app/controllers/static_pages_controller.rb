class StaticPagesController < ApplicationController
  def index
    render json: { name: 'hi' }.to_json
  end
end
