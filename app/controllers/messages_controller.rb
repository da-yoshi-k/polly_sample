class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to room_path(@message.room), success: '投稿しました'
    else
      redirect_to room_path(@message.room), danger: 'メッセージは100文字以内で投稿してください'
    end
  end

  private

  def message_params
    params.require(:message).permit(:body).merge(room_id: params[:room_id])
  end
end
