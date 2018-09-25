require 'rails_helper'

RSpec.feature 'User managing employees:' do
  before { warden_sign_in user }

  let(:user) { create :user }
  let!(:employee) { create :employee }
  let!(:new_employee) { build :employee }

  scenario 'listing all employees' do
    visit employees_path

    expect(page).to have_content(employee.name)
  end

  scenario 'creating a new employee' do
    visit employees_path

    click_link 'New Employee'

    fill_in 'Name', :with => new_employee.name

    click_button 'Create Employee'

    expect(page).to have_content('Employee was successfully created.')
    expect(page).to have_content(new_employee.name)
  end

  scenario 'editing an employee' do
    edited_employee = build :employee
    visit employees_path

    click_link("edit-#{employee.id}")

    fill_in 'Name', :with => edited_employee.name

    click_button 'Update Employee'

    expect(page).to have_content('Employee was successfully updated.')
    expect(page).to have_content(edited_employee.name)
  end

  scenario 'deleting an employee' do
    visit employees_path

    expect { click_link("destroy-#{employee.id}") }.to change(Employee, :count).by(-1)
    expect(page).to have_content('Employee was successfully destroyed.')
  end

end
