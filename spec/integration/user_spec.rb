require_relative '../spec_helper'



describe "user creation" do

	it "should allow me to create a new user" do
		user_count = User.count
		visit new_user_registration_path
		fill_in "Email", with: "derp@lerp.com"
		fill_in "Password", with: "lerpderp"
		fill_in "Password confirmation", with: "lerpderp"
		click_link_or_button "Sign up"
		User.count.should eq user_count+1
	end

end

describe "signing in and out" do

	it "should allow me to sign in" do
		visit welcome_index_path
		click_link_or_button "Sign in"
		fill_in "Email", with: 'owen.james.kelly@gmail.com'
	end



end