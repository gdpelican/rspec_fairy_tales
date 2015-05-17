require 'spec_helper'

describe 'FiftyWordWonders' do

  before { @stories = find_stories('fifty_word_wonders').compact }

  it 'must use less than 50 words' do
    @stories.map { |story| expect(story).to have_a_word_maximum_of 50 }
  end

  it 'must be a book' do
    @stories.map { |story| expect(story).to have_a_character_minimum_of 1500 }
  end

end