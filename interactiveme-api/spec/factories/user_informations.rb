FactoryGirl.define do
    factory :user_information do
        email { Faker::StarWars.word }
        password { Faker::StarWars.word }
        status { Faker::Number.number(0) }
    end
end