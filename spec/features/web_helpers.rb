def sign_up_correctly
  visit '/signup'
  fill_in("name", with: "Paul")
  fill_in("username", with: "Bottycrap")
  fill_in("email", with: "paul@paul.com")
  fill_in("password", with: "password")
  fill_in("password_confirmation", with: "password")
  click_button("Register")
end

def sign_up_incorrect_password
  visit '/signup'
  fill_in("name", with: "Paul")
  fill_in("username", with: "Bottycrap")
  fill_in("email", with: "paul@paul.com")
  fill_in("password", with: "password")
  fill_in("password_confirmation", with: "psoword")
  click_button("Register")
end

def sign_in_incorrect_password
  visit '/signin'
  fill_in(:username, with: "Bottycrap")
  fill_in(:password, with: "wrongpassword")
  click_button("signinbutton")
end

def sign_in_correctly
  visit '/signin'
  fill_in(:username, with: "Bottycrap")
  fill_in(:password, with: "password")
  click_button("signinbutton")
end

def write_peep
  fill_in(:new_peep, with: "Test peep!")
  click_button("Submit")
end