require 'spec_helper'

find_stories('dr_seuss_special').each do |story|
  describe story do
    it { is_expected.to have_a_word_maximum_of 50 }
    it { is_expected.to have_a_character_minimum_of 1500 } 
  end
end
