class AmazonSesController < ApplicationController
  def index
  end

  def send_email
    AmazonMailer.send_email(params[:email]) if !params[:delay]
    AmazonMailer.delay.send_email(params[:email]) if params[:delay]
    flash[:success] = "#{params[:delay] ? 'Delayed ' : ''} Email Sent."
    redirect_to '/amazon_ses/index'
  end

end
