require 'rails_helper'
# write test for all User modul methods
RSpec.describe Transac, type: :model do
  # create a new user
  before(:each) do
    @user = User.new(name: 'Test User', email: 'exemple@gmail.com', password: 'password',
                     password_confirmation: 'password')
    @category = Category.new(name: 'Test Category', user: @user, icon: 'fa-home')
    @transac = Transac.new(amount: 100, name: 'Test Transac', category: @category)
  end

  # test if user is valid
  it 'is valid with valid attributes' do
    expect(@transac).to be_valid
  end

  # test if user is not valid without amount
  it 'is not valid without amount' do
    @transac.amount = nil
    expect(@transac).to_not be_valid
  end

  # test if user is not valid without category
  it 'is not valid without category' do
    @transac.category = nil
    expect(@transac).to_not be_valid
  end
  # test transac belongs to category
  it 'belongs to category' do
    expect(@transac).to respond_to(:category)
  end
  # test category belongs to user
  it 'belongs to user' do
    expect(@category).to respond_to(:user)
  end
  # test the transac amount is a number
  it 'amount is a number' do
    expect(@transac.amount).to be_a(Numeric)
  end
end
