require 'yaml'

module BlasphemyFilter
  class Base
    def blasphemy?(text:, language:)
      profane = false
      dictionary.each do |rude_word|
        unless Regexp.new(rude_word).match(example_text.downcase).nil?
          profane = true
          break
        end
      end
      profane
    end

    def example_text
      "Fuck my life"
    end

    private

    def dictionary
      @dictionary ||= YAML.load_file(dictionary_file)
    end

    def dictionary_file
      File.join(File.dirname(__FILE__), '../../config/en_base.yml')
    end
  end
end
