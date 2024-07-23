class ListsController < ApplicationController

  def new
    @list = List.new
  end

  # 以下を追加
  def create
    list = List.new(list_params)
    list.save
    # redirect_to '/top' を削除して、以下コードに変更
    # 詳細画面へリダイレクト
    redirect_to list_path(list.id)  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end