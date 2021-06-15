class ProjectController < ApplicationController
  def index
    render json: "json {message: \"ok\"}"
  end
end
