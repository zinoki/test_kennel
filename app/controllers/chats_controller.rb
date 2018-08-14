class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def create
    @chat = Chat.new(chat_params)
    @chat.save
    redirect_to @chat
  end
  
  def new
  end

# create is an action
# @chat is an instance variable
# need a show action to show the saved chat after redirecting


  def show
    @chat = Chat.find(params[:id])
  end

  private
    def chat_params
      params.require(:chat).permit(:title, :text)
    end
end
