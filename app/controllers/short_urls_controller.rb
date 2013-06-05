class ShortUrlsController < ApplicationController

  def create

  end

  def destroy

  end

  def index
    render :json =>  ShortUrl.all
  end

  def show

  end


end
