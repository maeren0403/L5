class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweets = Tweet.new
  end
  
  def create
    
    @tweet =  Tweet.new(message: params[:tweet][:message])
    if @tweet.save
      flash[:notice] = '1レコード追加しました'
      redirect_to root_path
    else
      render tweet_new_path
    end
    
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    flash[:notice] = '1レコード削除しました'
    redirect_to root_path
  end
  
  def show
    @tweet = Tweet.find(params[:id])
  end 
  
end