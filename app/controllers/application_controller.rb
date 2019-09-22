class ApplicationController < ActionController::Base
    def word_scrapper
        url = "https://www.spanishdict.com/wordoftheday"
        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page)
        byebug
        render template: 'word_scrapper' 
    end
end
