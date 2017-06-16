FactoryGirl.define do
    factory :summary_information do
        content { Faker: 'abcdefg' }
        user_information_id nil
    end
end