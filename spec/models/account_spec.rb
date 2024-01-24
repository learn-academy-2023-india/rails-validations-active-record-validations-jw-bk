require 'rails_helper'

RSpec.describe Account, type: :model do
  it 'is not valid without a username' do
    scully = Account.create(
      username: nil,
      password: 'qwer1234',
      email: 'india@learnacademy.com'
    )
    expect(scully.errors[:username]).to_not be_empty
  end
  it 'is not valid without a password' do
    brandon = Account.create(
      username: 'indiacohort',
      password: nil,
      email: 'india@learnacademy.com'
    )
    expect(brandon.errors[:password]).to_not be_empty
  end
  it 'is not valid without a email' do
    josh = Account.create(
      username: 'indiacohort',
      password: 'qwer1234',
      email: nil
    )
    expect(josh.errors[:email]).to_not be_empty
  end
end
