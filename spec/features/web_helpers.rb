
def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Monkey'
  fill_in :player2, with: 'Penguin'
  click_button 'Submit'
end
