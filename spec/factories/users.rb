FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"1q1q1q1q"}
    password_confirmation {"1q1q1q1q"}
    firstname             {"田中"}
    lastname              {"太郎"}
    firstfurigana         {"タナカ"}
    lastfurigana          {"タロウ"}
    birthday              {"2020-07-26"}
  end

end