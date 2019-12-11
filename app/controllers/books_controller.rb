# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    # includes для оптимизации запросов к БД (проблема N+1)
    @books = Book.includes(:authors, :group)
    # помни про SQL injection (экранируй пользовательский ввод)
    # present-рельсовый метод(Active Cupport) проверяет на присутсвие ввода, противоположный ему blank
    @books = @books.where('LOWER(title) LIKE ?', "%#{params[:search_name]}%") if params[:search_name].present?
  end

  def show
    @book = Book.find(params[:id])
  end
end
