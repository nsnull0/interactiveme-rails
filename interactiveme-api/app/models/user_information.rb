class UserInformation < ApplicationRecord
    has_many :summary_informations, dependent: :destroy
    validates_presence_of :email, :password, :status
end
