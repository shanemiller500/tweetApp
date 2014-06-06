class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end


def create
  @tweet = Tweet.create(tweet_params)
  redirect_to root_path 
end

def update
  @tweet = Tweet.create(tweet_params)
  redirect_to root_path 
end

def show
  @tweet = Tweet.find(params[:id])
end

def new
  @tweet = Tweet.new
end

def edit
  @tweet = Tweet.find(params[:id])
end

def destroy
   @tweet = Tweet.find(params[:id])
      @tweet.destroy
    redirect_to root_path
end

private
  def tweet_params
    params.require(:tweet).permit(:message)
  end

end