require 'rails_helper'

RSpec.describe SummaryInformation, type: :model do

    it { should belong_to(:user_information) }

    it { should validate_presence_of(:content) }

end
