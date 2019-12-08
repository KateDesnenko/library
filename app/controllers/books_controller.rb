# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    # includes для оптимизации запросов к БД (проблема N+1)
    @books = Book.includes(:authors).all
  end

  def show
    @book = Book.find(params[:id])
  end
end
