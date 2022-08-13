class UserStoresController < ApplicationController
    
     def show
        @user_stores = UserStore.all
    end
    def create
        @user_store = UserStore.new user_course_param
    if @user_store.save
        flash[:success] = t "controller.user.flash_success"
        redirect_to root_url
        else
        render :new
        end
    end

    def user_course_param
        params.require(:user_store).permit :user_id, :store_id
    end
end
