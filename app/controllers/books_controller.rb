class BooksController < ApplicationController
     def index
        @book = Book.all
    end
    def room 
    end
    def show
        @books = Book.all
  
        
    end
    def admin 
      @books = Book.all
    end
    def user_class
        @books = Book.all
        
    end
    def new 
      @book= Book.new
    end
    def create
    @book = Book.new course_params
        if @book.save
        flash[:success] = t "controller.user.flash_success"
        redirect_to root_url
        else
        render :new
        end
    end
    def course_params
    params.require(:book).permit :name, :author
  end
  def destroy
    @books = Book.find_by(id: params[:id]).destroy
   
    redirect_back(fallback_location: root_path)
    end
end
