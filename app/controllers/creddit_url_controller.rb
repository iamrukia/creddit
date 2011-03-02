class CredditUrlController < ApplicationController
  def index
    @posts = Post.all
  end

end
