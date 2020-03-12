require 'rubygems'
require 'open-uri'
require 'net/http'
require 'json'
require 'nokogiri'
require 'htmlentities'

module StackOverflow
  class Search
    def questions(search_terms)
      results = API.new.search(search_terms)
      questions_list(results)
    end

    def questions_list(questions)
      table = []
      questions.each do |question|
        score = if question['score']
                  question['score'] > 0 ? "+#{question['score']}" : question['score']
                else
                  0
                end
        table << [score.to_i, question['title'], question['link']] if score.to_i > 0
      end
      if !table.empty?
        search_results = table.sort.reverse.map { |strings| strings.join(' : ') }.join("\n")
        coder = HTMLEntities.new
        search_results = coder.decode(search_results)
        "Here are some relevant questions from StackOverflow, sorted by rating:\n\n#{search_results}"
      else
        'Sorry, no results found. Try different search terms.'
      end
    end
  end

  class API
    def search(search_string)
      search_string = URI.encode(search_string)
      api_get("/2.2/similar?order=desc&sort=relevance&title=#{search_string}&site=stackoverflow")
    end

    def api_get(path)
      url = 'https://api.stackexchange.com' + path
      u = URI.parse(url)
      Net::HTTP.start(u.host, u.port, use_ssl: true) do |http|
        response = http.get(u.request_uri)
        return JSON(response.body)['items']
      end
    end
  end
end
