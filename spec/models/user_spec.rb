require 'spec_helper'

describe User do
  it { should have_valid(:username).when("farmgirl") }
  it { should_not have_valid(:username).when(nil, '') }
  
  it {should have_valid(:first_name).when("Jack") }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when("Smith") }
  it { should_not have_valid(:last_name).when(nil,'')}

  it { should have_valid(:email).when('fern@gully.com') }
  it { should_not have_valid(:email).when(nil, '')}
  
  it { should have_many(:markets) }
  it { should have_many(:recommendations) }

  it 'has matching password confirmation for the password' do
    user = User.new
    user.password = 'password'
    user.password_confirmation = 'anotherpassword'

    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end
end
