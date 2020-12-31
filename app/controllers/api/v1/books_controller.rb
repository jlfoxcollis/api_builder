class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    render json: Book.create(book_params)
  end

  def update
    render json: Book.update(params[:id], book_params)
  end

  def destroy
    render json: Book.delete(params[:id])
  end

  private

    def book_params
      params.require(:book).permit(:title, :author, :summary, :genre, :number_sold)
    end
end
