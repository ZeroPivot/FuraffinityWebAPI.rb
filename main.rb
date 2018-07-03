require_relative "FuraffinityWebAPI"

cookie="cookies.txt"
#jar = HTTP::CookieJar.new
#jar.load(cookie)
#p jar
API = FuraffinityWebAPI.new(cookie_file_txt: cookie)
page = API.get_userpage(username: 'aritywolf')
