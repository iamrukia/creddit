class CredditUrlController < ApplicationController
  def index
    @creddit_urls = Post.all
  end

  def new
    @creddit_url = Post.new
  end
end
