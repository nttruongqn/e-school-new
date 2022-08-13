class StoresController < ApplicationController
    def index
        @store = Store.all
    end
    def room 
    end
    def show
        @stores = Store.all
    end
    def admin 
      @stores = Store.all
    end
    def user_class
        @stores = Store.all
        
    end
    def new 
      @store= Store.new
    end
    def create
    @store = Store.new course_params
        if @store.save
        flash[:success] = t "controller.admin.update_exam_success"
        redirect_to stores_admin_path
        else
        render :new
        end
    end
    def course_params
    params.require(:store).permit :name, :price
  end
  def destroy
    @stores = Store.find_by(id: params[:id]).destroy
   
    redirect_back(fallback_location: root_path)
    end
end
