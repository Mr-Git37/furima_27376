FactoryBot.define do
  factory :item do

    title                    {"犬の写真"}
    text                     {"商品説明"}
    genre_id                 {5}
    condition_id             {5}
    deliveryfee_id           {5}
    prefecture_id            {5}
    scheduleddelivery_id     {5}
    price                    {2000}
    association :user
  end
end
