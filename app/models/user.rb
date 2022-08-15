class User < ApplicationRecord
    validates :email,uniqueness:true
    validates :email, presence:true
    validates :password, length:{minimum: 4,allow_nil: true}
    has_many:travel
    has_many:budgetplaner
    has_many:wallet
    def password
        @password
    end
    def password=(raw)
        @password=raw
        self.password_digest=BCrypt::Password.create(raw)
    end
    def is_password?(raw)
        BCrypt::Password.new(password_digest).is_password?(raw)
    end

end
