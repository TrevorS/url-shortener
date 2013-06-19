class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    @link.ip = request.remote_ip.encode("UTF-8")
    if @link.save
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
    link.add_click
    link.save
    redirect_to get_full_user_url(link)
  end

  private
  def get_full_user_url(link)
    scheme = Scheme.find(link.scheme_id).name
    "#{scheme}#{link.user_url}"
  end
end
