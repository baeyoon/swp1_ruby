require 'nokogiri'
require 'open-uri'

PAGE_URL = "http://joongang.joins.com/"

page = Nokogiri::HTML(open(PAGE_URL))

contents = []

articles = page.css('.main_article li a')
articles.each do |x|
    page_url = x[:href]
    page = Nokogiri::HTML(open(page_url))
    articlebody = page.css('#article_body')
    articlebody.each do |body|
        contents.push body.text
    end
end
puts contents