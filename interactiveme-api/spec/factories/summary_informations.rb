FactoryGirl.define do
    factory :summary_information do
        content { Faker::Lorem.word }
        user_information_id nil
    end

end