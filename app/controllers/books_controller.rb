class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
    redirect_to '/175343'
  else
    @books = Book.all
    render :index
  end
  
  def index
    @book = Book.new
    @books = Book.all
    
  end

  def show
  end

  def edit
  end
  
 private
  
  def book_params
    params.require(:book).permit(:title, :body)
 end
end