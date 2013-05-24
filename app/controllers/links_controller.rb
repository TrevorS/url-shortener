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
end
