require 'rails_helper'
# write test for all User modul methods
RSpec.describe Category, type: :model do
  # create a new user
  before(:each) do
    @user = User.new(name: 'Test User', email: 'exemple@gmail.com', password: 'password', password_confirmation: 'password')
    @category = Category.new(name: 'Test Category', user: @user, icon: 'fa-home')
  end
    # test if user is valid
    it 'is valid with valid attributes' do
        expect(@category).to be_valid
    end
        # test if user is not valid without name
    it 'is not valid without a name' do
        @category.name = nil
        expect(@category).to_not be_valid
    end
        # test if user is not valid without user
    it 'is not valid without a user' do
        @category.user = nil
        expect(@category).to_not be_valid
    end
        # test if user is not valid without icon
    it 'is not valid without an icon' do
        @category.icon = nil
        expect(@category).to_not be_valid
    end
    # test category name
    it 'has a name' do
      expect(@category.name).to eq 'Test Category'
    end
    # test category user    
    it 'has a user' do
        expect(@category.user).to eq @user
        end

    # test category icon
    it 'has an icon' do
        expect(@category.icon).to eq 'fa-home'
    end

    # test the user association with category
    it 'belongs to a user' do
        expect(@category.user).to eq @user
    end

end