module BlasphemyFilter
  class Base
    def blasphemy?(text:, language:)
      profane = false
      dictionary.each do |rude_word|
        if rude_word.match(example_text.downcase)
          profrane = true
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
      File.join(File.dirname(__FILE__), '../config/dictionary.yml')
    end
  end
end
