require 'rubygems'
require 'open-uri'
require 'net/http'
require 'json'
require 'nokogiri'
require 'terminal-table/import'
require 'sqlite3'
require 'optparse'

module StackOverflow
  class Search
    def questions(search_terms)
      results = API.new.search(search_terms)
      questions_list(results)
    end
    def questions_list(questions)
      table = []
      questions.each do |question|
          if question['score']
              score = question['score'] > 0 ? "+#{question['score']}" : question['score'] 
          else
              score = 0
          end
          if score.to_i > 0 
            table << [score.to_i, question['title'], question['link']]
          end
      end
      table.sort.reverse.map {|strings| strings.join(" : ")}.join("\n")
    end
  end

  class API
    def search(search_string)
      search_string = URI::encode(search_string)
      api_get("/2.2/similar?order=desc&sort=relevance&title=#{search_string}&site=stackoverflow")
    end
    def api_get(path)
      url = "https://api.stackexchange.com" + path
      u = URI.parse(url)
      Net::HTTP.start(u.host, u.port, :use_ssl => true) do |http|
        response = http.get(u.request_uri)
        return JSON(response.body)['items']
      end
    end
  end
end

