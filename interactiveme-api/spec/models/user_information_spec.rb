require 'rails_helper'

RSpec.describe UserInformation, type: :model do

    it { should have_many(:summary_informations).dependent(:destroy) }

    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:status) }

end
