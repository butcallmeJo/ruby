require File.join File.dirname(__FILE__), 'http_to_json'
require 'httpclient'
require 'json'

extheaders = {
  'User-Agent' => 'Holberton_School',
  'Authorization' => 'token fffa38b10948aa7eff293682308672bc95672ae3'
}

print "Please input your GitHub username: "
user = gets.chomp
user_url = "https://api.github.com/users/#{user}"
repos_url = "https://api.github.com/users/#{user}/repos"

user_json = http_to_json(user_url)
repos_json = http_to_json(repos_url)

puts user_json
languages = Hash.new
i = 0
while i < repos_json.length
  j = 0
  repo_name = repos_json[i]["name"]
  languages_url = "https://api.github.com/repos/#{user}/#{repo_name}/languages"
  languages_json = http_to_json(languages_url)
  puts repo_name
  puts languages_json.length
  while j < languages_json.length
    puts "#{languages_json.keys[j]}: #{languages_json.values[j]} bytes"
    if languages["#{languages_json.keys[j]}"] == nil
      languages["#{languages_json.keys[j]}"] = languages_json.values[j]
    else
      languages["#{languages_json.keys[j]}"] += languages_json.values[j]
    end

    # languages[:languages_json]
    j += 1
  end
  puts
  i += 1
end

puts languages
