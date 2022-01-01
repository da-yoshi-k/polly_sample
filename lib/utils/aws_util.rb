class AwsUtil
  def text_to_speech_with_polly(message)
    # encoding: utf-8
    polly = Aws::Polly::Client.new
    resp = polly.synthesize_speech({
                                     engine: 'neural',
                                     sample_rate: '16000',
                                     output_format: 'mp3',
                                     language_code: 'ja-JP',
                                     text: message,
                                     text_type: 'text',
                                     voice_id: 'Takumi'
                                   })
    resp.audio_stream
  rescue StandardError => e
    puts 'Got error:'
    puts 'Error message:'
    puts e.message
  end

  def s3_upload(file, key)
    region = ENV['AWS_REGION']
    bucket = ENV['S3_BUCKET']
    client = Aws::S3::Client.new(region: region)
    client.put_object(bucket: bucket, key: key, body: file.read)
  end
end
