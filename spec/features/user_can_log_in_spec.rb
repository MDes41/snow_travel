require 'rails_helper'

describe "Oauth Login" do

	def stub_omniauth
    # first, set OmniAuth to run in test mode
    OmniAuth.config.test_mode = true
    # then, provide a set of fake oauth data that
    # omniauth will use when a user tries to authenticate:
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
    :provider => "google_oauth2",
    :uid => "123456789",
    :info => {
        :name => "Matt D",
        :email => "mtdedeavor@example.com",
        :first_name => "Matt",
        :last_name => "D",
        :image => "https://lh3.mtd.com/url/photo.jpg"
    },
    :credentials => {
        :token => "token"
    }
   })
  end

	context "user can login" do
		it "can login" do
			visit '/'
			stub_omniauth
			expect(page.status_code).to eq(200)
			within ".navbar-right" do
				click_link("Login with Google")
			end
			expect(page).to have_content("Logged in as")
			expect(page).to have_content("Matt D")
			expect(page).to have_content("Logout")
		end
	end

	context "user can logout" do 
		it "can login" do
			visit '/'
			stub_omniauth
			expect(page.status_code).to eq(200)
			within ".navbar-right" do
				click_link("Login with Google")
			end
			expect(page).to have_content("Logged in as")
			expect(page).to have_content("Matt D")
			expect(page).to have_content("Logout")

			click_on "Logout"
			expect(page).to_not have_content("Logged in as")
			expect(page).to_not have_content("Matt D")
			expect(page).to have_content("Login with Google")
		end
	end
end
