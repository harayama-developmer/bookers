class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def edit
  end

  def create
    @books = Book.all
    @book = current_user.books.new(book_params)
    if @book.save
      redirect_to @book, success: 'You have created book successfully.'
    else
      render :index
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book, success: 'You have updated book successfully.'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
