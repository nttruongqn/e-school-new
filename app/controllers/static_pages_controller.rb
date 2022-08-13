class StaticPagesController < ApplicationController
  
  def admin
     
    @exams = Exam.all
    @count_cart = Examcart.where(user_id: session[:user_id]).count
    if logged_in?
    @micropost = current_user.microposts.build
    #  @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
  def manage 
  end
  def index
  @exams = Exam.all
  @user = User.find_by(id: session[:user_id])
  @count_cart = Examcart.where(user_id: session[:user_id]).count
    if logged_in?
     @microposts = current_user.microposts.paginate(page: params[:page])
     @micropost = current_user.microposts.find_by(id: params[:id])
    @micropost = current_user.microposts.build
    #  @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
   def metaverse
  @exams = Exam.all
    @count_cart = Examcart.where(user_id: session[:user_id]).count
    if logged_in?
    @micropost = current_user.microposts.build
    #  @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
   def exam
   @count_cart = Examcart.where(user_id: session[:user_id]).count
    @exams = Exam.all
  end
  def introduce
    @exams = Exam.all
  end
  def correct_user
    
    redirect_to root_url if @micropost.nil?
  end
end
