RSpec::Matchers.define :have_a_word_maximum_of do |count|
  match { |story| words_in(story).uniq.count <= count }
end

RSpec::Matchers.define :have_a_character_maximum_of do |count|
  match { |story| story.length <= count }
end

RSpec::Matchers.define :have_a_word_minimum_of do |count|
  match { |story| words_in(story).uniq.count >= count }  
end

RSpec::Matchers.define :have_a_character_minimum_of do |count|
  match { |story| story.length >= count }
end

def words_in(story)
  strip_punct(story.downcase).split
end

def strip_punct(story)
  story.gsub(/,|.|!|\?|&|(|)|_|-/, '')
end