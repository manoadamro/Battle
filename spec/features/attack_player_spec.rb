require_relative 'web_helpers'

feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Monkey attacked Penguin')
  end

  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('100 : 90')
  end
end
