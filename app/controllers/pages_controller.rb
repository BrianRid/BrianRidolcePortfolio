class PagesController < ApplicationController
  def home
    @message = Message.new(params[:message])
  end
end
