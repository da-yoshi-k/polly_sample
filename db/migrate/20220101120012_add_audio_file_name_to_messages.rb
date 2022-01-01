class AddAudioFileNameToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :audio_file_name, :string
  end
end
