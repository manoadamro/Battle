require_relative 'web_helpers'

# in spec/features/enter_names_spec.rb
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Monkey vs. Penguin'
  end
end
