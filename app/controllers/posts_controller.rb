class PostsController < ApplicationController
  def index
    response = External::Post.new(1).all
    if response.ok?
      @posts = response.body.data
    else
      render json: { errors: response.body.data }, status: response.code
    end
  end
end
