require "blasphemy_filter/version"
require "blasphemy_filter/base"

module BlasphemyFilter
  def check(text = "")
    BlasphemyFilter::Base.blasphemy?(text: text, language: "eng")
  end
end
