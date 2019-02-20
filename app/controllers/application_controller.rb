class ApplicationController < ActionController::Base
  def show
    @posts = Post.find(prams[:id])
  end
end
