FactoryBot.define do
  factory :user_item do
    
    postalcode { '123-4567' }
    prefecture_id {1}
    city { '横浜市緑区' }
    number { '青山1-1-1' }
    buildingname {"柳ビル808"}
    phonenumber { '09012345678' }
  
  end
end