FactoryBot.define do
  factory :item do

    # image                    {"1259246_615.jpg"}
    title                    {"犬の写真"}
    text                     {"商品説明"}
    genre_id                 {1}
    condition_id             {1}
    deliveryfee_id           {1}
    prefecture_id            {1}
    scheduleddelivery_id     {1}
    price                    {2000}
  end
end
