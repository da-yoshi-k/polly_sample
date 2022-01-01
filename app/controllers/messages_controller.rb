require 'utils/aws_util'
class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    audio_filename = "#{SecureRandom.uuid}.mp3"
    @message.audio_file_name = audio_filename
    if @message.save
      util = AwsUtil.new
      audio = util.text_to_speech_with_polly(@message.body)
      util.s3_upload(audio, audio_filename)
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
