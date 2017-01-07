require 'rails_helper'

RSpec.describe User, type: :model do
  auth_info = {
    :provider => "google_oauth2",
    :uid => "123456789",
    :info => {
        :name => "Matt D",
        :email => "mtdendeavor@example.com",
        :first_name => "Matt",
        :last_name => "D",
        :image => "https://lh3.mtd.com/url/photo.jpg"
    },
    :credentials => {
        :token => "token"
    }
   }

  it 'creates user profile' do
  	user = User.from_omniauth(auth_info)

  	expect(user.uid).to eq('123456789')
  	expect(user.name).to eq('Matt D')
  	expect(user.email).to eq('mtdendeavor@example.com')
  	expect(user.first_name).to eq('Matt')
  	expect(user.last_name).to eq('D')
  	expect(user.image).to eq('https://lh3.mtd.com/url/photo.jpg')
  	expect(user.token).to eq('token')
  end
end
