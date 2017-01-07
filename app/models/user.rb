class User < ApplicationRecord

	def self.from_omniauth(auth_info)
	  where(uid: auth_info[:uid]).first_or_create do |new_user|
	    new_user.uid                = auth_info[:uid]
	    new_user.name               = auth_info[:info][:name]
	    new_user.email              = auth_info[:info][:email]
	    new_user.first_name         = auth_info[:info][:first_name]
	    new_user.last_name          = auth_info[:info][:last_name]
	    new_user.image              = auth_info[:info][:image]
	    new_user.token              = auth_info[:credentials][:token]
	  end
	end

end
