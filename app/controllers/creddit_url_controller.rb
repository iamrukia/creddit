class CredditUrlController < ApplicationController
  def index
    @creddit_urls = Post.all
  end

  def new
    @creddit_url = Post.new
  end

  def create
    @creddit_url = Post.new params[:post]
    @creddit_url.user = current_user
    if @creddit_url.save then
      flash[:notice] = "URL has been posted successfully"
      redirect_to creddit_url_path(@creddit_url)
    else
      flash[:alert] = "URL could not be posted"
      render :action => "new"
    end
  end

  def show
    @creddit_url = Post.find(params[:id])
  end
end
