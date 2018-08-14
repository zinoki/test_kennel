class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
  end

  def new
    @chat = Chat.new
  end

  def edit
    @chat = Chat.find(params[:id])
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to @chat
    else
      render 'new'
    end
  end


# create is an action
# @chat is an instance variable
# need a show action to show the saved chat after redirecting



  def update
    @chat = Chat.find(params[:id])

    if @chat.update(chat_params)
      redirect_to @chat
    else
      render 'edit'
    end
  end

  def destroy
    @chat = Chat.find(params[:id])
    @chat.destroy
    redirect_to chats_path
  end

  private
    def chat_params
      params.require(:chat).permit(:title, :text)
    end
end
