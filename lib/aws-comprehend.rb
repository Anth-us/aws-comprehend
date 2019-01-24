class AWSComprehend
  def initialize
    @client ||= Aws::Comprehend::Client.new
  end
  
  def detect_entities(message, language: 'en')
    puts "detect_entities in: \"#{message}\"..." if $verbose
    @client.detect_entities({
      text: message,
      language_code: language
    }).entities
  end

  def detect_key_phrases(message, language: 'en')
    puts "Analying: \"#{message}\"..." if $verbose
    @client.detect_key_phrases({
      text: message,
      language_code: language
    }).key_phrases
  end
end