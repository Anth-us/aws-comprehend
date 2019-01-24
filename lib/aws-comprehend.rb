class AWSComprehend
  def initialize
    @client ||= Aws::Comprehend::Client.new
  end
  
  def detect_entities(message, language: 'en')
    puts "Analying: \"#{message}\"..." if $verbose
    @client.detect_entities({
      text: message,
      language_code: language
    }).entities
  end
end