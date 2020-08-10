class UserItem

  include ActiveModel::Model
  attr_accessor :postalcode, :prefecture_id, :city, :number, :buildingname, :phonenumber, :item_id, :user_id

  with_options presence: true do
    validates :postalcode
    validates :prefecture_id
    validates :city
    validates :number
    validates :buildingname
    validates :phonenumber
  end

    def save
      # Order.create(postalcode: postalcode, prefecture_id: prefecture_id, city: city, number: number, buildingname: buildingname, phonenumber: phonenumber, item_id: item_id, user_id: user_id)
      Address.create(postalcode: postalcode, prefecture_id: prefecture_id, city: city, number: number, buildingname: buildingname, phonenumber: phonenumber, item_id: item_id)
      Order.create(item_id: item_id, user_id: user_id)
    end
end