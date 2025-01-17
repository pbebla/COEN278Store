class User < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
    has_secure_password #so that we have user.authenticate method
end
