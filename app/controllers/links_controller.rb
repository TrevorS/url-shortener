class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      @full_url = "http://#{@link.short_url}"
      respond_to do |format|
        format.html
        format.js
      end
    else
      puts "Error!"
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  def show
    link = Link.where(short_url: params[:path]).first
    redirect_to get_full_user_url(link)
  end

  private
  def get_full_user_url(link)
    "http://#{link.user_url}"
  end
end
