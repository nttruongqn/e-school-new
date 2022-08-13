class ClassesController < ApplicationController
    def index
       @classes = Classe.all
    end
    def room 
    end
    def show
        @classes = Classe.all
        @exams = Exam.all
        
    end
    def user_class
        @classes = Classe.all
        
    end
    def admin 
      @classes = Classe.all
    end
    def new 
      @class= Classe.new
    end
    def create
    @class = Classe.new user_params
        if @class.save
        flash[:success] = t "controller.admin.update_exam_success"
        redirect_to classes_admin_path
        else
        render :new
        end
    end
    def user_params
    params.require(:classe).permit :name, :subject, :description, :teacher
  end
  def destroy
    @classes = Classe.find_by(id: params[:id]).destroy
   
    redirect_back(fallback_location: root_path)
  end
end
