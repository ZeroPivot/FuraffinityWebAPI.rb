require "mechanize"
require "http-cookie"
#require 'rmagick'
#require 'twitter'

# Fake API for furaffinity.net
# By ZeroPivot - zerothpivot@gmail.com


#Version 0.1 - 2018-07-03 - Initial functions, class, helper functions




class FuraffinityWebAPI

	# Initialize with a cookie file, usually taken from a web extension.
	# Required.
	DEBUG=true
	DEBUG_SAVE=true

	def initialize(cookie_file_txt:)
		@agent = Mechanize.new	
		@agent.cookie_jar.add(cookie_file_txt, :cookiestxt) 
								 
	end

	def get_userpage(username:)
		userpage = @agent.get("http://furaffinity.net/user/#{username}")
		
		@agent.download("http://furaffinity.net/user/#{username}", "#{username}.html")

		#file = Mechanize::File.new(userpage, nil, '')
		#file.content.save!("arity.html")
	end

	def image_by_id(image_id:)
	end

	def get_gallery(username:)
	end

	def get_favorites(username:)
	end

	def user_watchlist(user_id_or_name)
	end

	def user_profile(user_id_or_name)
	end





end

