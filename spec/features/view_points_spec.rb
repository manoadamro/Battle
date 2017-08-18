require_relative 'web_helpers'

# in spec/features/enter_names_spec.rb
feature 'View points' do
  scenario 'viewing points' do
    sign_in_and_play
    expect(page).to have_content '100 : 100'
  end
end
