require 'rails_helper'

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
    describe '#create' do

    before do
      @item = build(:item)
      @item.image = fixture_file_upload("#{Rails.root}/public/images/test.png")
    end

    it "is valid with a image, title, text, genre_id, condition_id, deliveryfee_id, prefecture_id, scheduleddelivery_id, price" do
      expect(@item).to be_valid
    end 

    it "is invalid without a image" do

      @item.image = nil
      @item.valid?
      expect(@item.errors[:image]).to include("can't be blank")
    end

    it "is invalid without a title" do
      @item.title = nil
      @item.valid?
      expect(@item.errors[:title]).to include("can't be blank")
    end

    it "is invalid without a text" do
      @item.text = nil
      @item.valid?
      expect(@item.errors[:text]).to include("can't be blank")
    end

    it "is invalid without a genre_id" do
      @item.genre_id = nil
      @item.valid?
      expect(@item.errors[:genre_id]).to include("Select")
    end

    it "is invalid without a condition_id" do
      @item.condition_id = nil
      @item.valid?
      expect(@item.errors[:condition_id]).to include("Select")
    end

    it "is invalid without a deliveryfee_id" do
      @item.deliveryfee_id = nil
      @item.valid?
      expect(@item.errors[:deliveryfee_id]).to include("Select")
    end

    it "is invalid without a prefecture_id" do
      @item.prefecture_id = nil
      @item.valid?
      expect(@item.errors[:prefecture_id]).to include("Select")
    end

    it "is invalid without a scheduleddelivery_id" do
      @item.scheduleddelivery_id = nil
      @item.valid?
      expect(@item.errors[:scheduleddelivery_id]).to include("Select")
    end

    it "is invalid without a price" do
      @item.price = nil
      @item.valid?
      expect(@item.errors[:price]).to include("can't be blank")
    end
  end
end
