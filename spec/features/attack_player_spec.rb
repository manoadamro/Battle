require_relative 'web_helpers'

feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Monkey attacked Penguin')
  end

  scenario 'reduces points' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('100 : 90')
  end

  scenario 'switches turn' do
    sign_in_and_play
    click_button('Attack')
    expect($game.turn).to eq(2)
  end

  scenario 'switches turn both ways' do
    sign_in_and_play
    2.times { click_button('Attack') }
    expect($game.turn).to eq(1)
  end
end
