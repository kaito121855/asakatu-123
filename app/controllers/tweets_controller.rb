class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:manth, :day, :wake_up_hour, :wake_up_minute,)
  end
end
