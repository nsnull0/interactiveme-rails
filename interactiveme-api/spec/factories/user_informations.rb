FactoryGirl.define do
    factory :user_information do
        email { Faker:'aaa@aaa.com' }
        password { Faker:'123456' }
        status { Faker::Number.number(0) }
    end
end