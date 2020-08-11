require 'rails_helper'

describe UserItem do
  describe '#create' do

    before do
      @user = build(:user)
      @item = build(:item)
      @item.image = fixture_file_upload("#{Rails.root}/public/images/test.png")
      @user_item = build(:user_item)
    end

    it "is valid with a postalcode, prefecture_id, city, number, buildingname, phonenumber" do
      expect(@user_item).to be_valid
    end

    it "is invalid without a postalcode" do
      @user_item.postalcode = nil
      @user_item.valid?
      expect(@user_item.errors[:postalcode]).to include("can't be blank")
    end

    it "is invalid without a prefecture_id" do
      @user_item.prefecture_id = nil
      @user_item.valid?
      expect(@user_item.errors[:prefecture_id]).to include("can't be blank")
    end

    it "is invalid without a city" do
      @user_item.city = nil
      @user_item.valid?
      expect(@user_item.errors[:city]).to include("can't be blank")
    end

    it "is invalid without a number" do
      @user_item.number = nil
      @user_item.valid?
      expect(@user_item.errors[:number]).to include("can't be blank")
    end

    it "is invalid without a buildingname" do
      @user_item.buildingname = nil
      @user_item.valid?
      expect(@user_item.errors[:buildingname]).to include("can't be blank")
    end

    it "is invalid without a phonenumber" do
      @user_item.phonenumber = nil
      @user_item.valid?
      expect(@user_item.errors[:phonenumber]).to include("can't be blank")
    end

  end
end