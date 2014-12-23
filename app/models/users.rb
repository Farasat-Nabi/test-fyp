class Users < ActiveRecord::Base
  / attr_accessible :title, :body
 attr_accessible :username, :password/
  	def self.register(form)
		obj = Users.new('username'=>form[:username],'password'=>form[:password]);
		obj.save
	end

	def self.signIn(form)
		user=Users.where(username:form[:username], password:form[:password]).first
		if user
			return true
		else 
			return false
		end
	end

	def self.authenticate()
		if EMAIL_REGEX.match(username_or_email)
			user = User.find_by_email(username_or_email)
		else
			user = User.find_by_username(username_or_email)
		end
		if user && user.match_password(login_password)
			return user
		else
			return false
		end
	end 


end
