require 'rest-client'

puts 'What would you like to search google for?'

search = gets.chomp
terms = search.gsub(' ', '+')

def google_search(terms)
  response = RestClient.get 'http://www.google.com/search', {:params => {:q => terms}}
  puts "This is you response."
  puts response

  puts "The response code is: #{response.code}"

  puts "The response headers is #{response.headers}."

  puts "The response cookies is #{response.cookies}."
  
end

google_search(terms)

