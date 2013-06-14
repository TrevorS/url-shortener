class LinksController < ApplicationController
  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      puts "Saved! URL is #{@link.user_url}"
    else
      puts "Error!"
    end
  end

  def show
    puts "short_url: #{params[:path]}"
    @link = Link.where(short_url: params[:path]).first
    puts @link
    full_link = "http://#{@link.user_url}"
    redirect_to full_link
  end
end
