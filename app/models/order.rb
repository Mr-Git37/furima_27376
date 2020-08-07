class Order < ApplicationRecord
  with_options precence: true do
      validates :price
  end
end
