describe 'Switch turns' do

  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Dave's turn"
    end

    scenario 'after player one attacks' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).not_to have_content "Dave's turn"
      expect(page).to have_content "Harry's turn"
    end
  end

end
