class ListsController < ApplicationController
  def new
  end

  def index
    @lists = List.all  
  end

  def show
    @list = List.find(params[:id])  
  end

  def create
    list = List.new(list_params)
    list.save
    # redirect_to '/top' を削除して、以下コードに変更
    # 詳細画面へリダイレクト
    redirect_to list_path(list.id)  
  end

  def edit
  end
end
