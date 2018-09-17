require 'rails_helper'

RSpec.feature 'User registration and access:' do

  let!(:user) { create :user }

  context 'registering' do
  end

  context 'signing in' do

    scenario 'with valid credentials' do
      visit '/'
      click_link 'Sign in'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
      expect(page).to have_content('Signed in successfully.')
    end

    scenario 'with invalid credentials' do
      visit '/'
      click_link 'Sign in'
      fill_in 'Email', with: 'invalid@invalid.com'
      fill_in 'Password', with: 'invalid'
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password.')
    end

  end

  context 'signing up' do

    let!(:unregistered_user) { build :user }

    scenario 'with valid credentials' do

      visit '/'
      click_link 'Sign up'
      fill_in 'Email', with: unregistered_user.email
      fill_in 'Password', with: unregistered_user.password
      fill_in 'Password confirmation', with: unregistered_user.password
      email_counter = ActionMailer::Base.deliveries.count
      click_button 'Sign up'
      expect(page).to have_content('A message with a confirmation link has been sent to your email address.
                                    Please follow the link to activate your account.')
      expect(ActionMailer::Base.deliveries.count).to eq email_counter + 1
    end

    scenario 'with invalid credentials' do
      visit '/'
      click_link 'Sign up'
      fill_in 'Email', with: 'blablabla'
      fill_in 'Password', with: ''
      fill_in 'Password confirmation', with: ''
      click_button 'Sign up'
      expect(page).to have_content('error')
    end

    scenario 'confirmating account' do
      skip
      #TODO
    end

  end

  context 'signing out' do

    before do
      visit '/'
      click_link 'Sign in'
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
    end

    scenario 'after sign in' do
      visit '/'
      click_link 'Sign out'
      expect(page).to have_content('Signed out successfully.')
    end

  end

  context 'recovering password' do

    scenario 'recovery with valid data' do
      visit '/'
      click_link 'Sign in'
      click_link 'Forgot your password?'
      fill_in 'Email', with: user.email
      email_counter = ActionMailer::Base.deliveries.count
      click_button 'Send me reset password instructions'
      expect(page).to have_content('You will receive an email with instructions on how to reset your password in a few minutes.')
      expect(ActionMailer::Base.deliveries.count).to eq email_counter + 1
    end

    scenario 'recovery with invalid data' do
      visit '/'
      click_link 'Sign in'
      click_link 'Forgot your password?'
      fill_in 'Email', with: 'invalid@email.com'
      email_counter = ActionMailer::Base.deliveries.count
      click_button 'Send me reset password instructions'
      expect(page).to have_content('Email not found')
      expect(ActionMailer::Base.deliveries.count).to eq email_counter
    end

    scenario 'user create a new password' do
      skip
      # TODO: need to figure out how to generate the token to simulate the password recovery
    end

  end

end
