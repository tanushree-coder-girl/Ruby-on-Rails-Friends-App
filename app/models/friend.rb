class Friend < ApplicationRecord
    belongs_to :user
    
    validates:first_name, presence:true, length: {minimum:2, maximum:20}
    validates:last_name, presence:true, length: {minimum:3, maximum:20}
    validates:email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end


