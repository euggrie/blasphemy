require "blasphemy_filter/version"

module BlasphemyFilter
  def check(text = "")
    BlasphemyFilter::Base.blasphemy?(text: text, language: "eng")
  end
end
