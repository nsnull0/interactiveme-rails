class SummaryInformation < ApplicationRecord
  belongs_to :user_information
  validates_presence_of :content
end
