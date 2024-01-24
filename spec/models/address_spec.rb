require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without a street_number' do
    address1 = Address.create(
      street_number: nil,
      street_name: 'washington ave',
      city: 'san diego',
      state: 'ca',
      zip: 96657
    )
    expect(address1.errors[:street_number]).to_not be_empty
  end
  it 'is not valid without a street_name' do
    address2 = Address.create(
      street_number: 100,
      street_name: nil,
      city: 'san diego',
      state: 'ca',
      zip: 96657
    )
    expect(address2.errors[:street_name]).to_not be_empty
  end
  it 'is not valid without a city' do
    address3 = Address.create(
      street_number: 100,
      street_name: 'washington ave',
      city: nil,
      state: 'ca',
      zip: 96657
    )
    expect(address3.errors[:city]).to_not be_empty
  end
  it 'is not valid without a state' do
    address4 = Address.create(
      street_number: 100,
      street_name: 'washington ave',
      city: 'san diego',
      state: nil,
      zip: 96657
    )
    expect(address4.errors[:state]).to_not be_empty
  end
  it 'is not valid without a zip' do
    address5 = Address.create(
      street_number: 100,
      street_name: 'washington ave',
      city: 'san diego',
      state: 'ca',
      zip: nil
    )
    expect(address5.errors[:zip]).to_not be_empty
  end
end
