class LongUrlsController < ApplicationController

  def create
    long_url = LongUrl.new(params[:long_url]) #LongUrl.new(:url => 'asdfas')
    if long_url.save
      short_url = long_url.shorten
      render json: short_url
    else
      render json: long_url.errors, status: :unprocessable_entity
    end

  end

  def destroy

  end

  def index

  end

  def show

  end

end
