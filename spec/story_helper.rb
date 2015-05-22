RSpec::Matchers.define :have_a_word_maximum_of do |count|
  match { |story| words_in(story).count <= count }
end

RSpec::Matchers.define :have_a_character_maximum_of do |count|
  match { |story| story.length <= count }
end

RSpec::Matchers.define :have_a_word_minimum_of do |count|
  match { |story| words_in(story).count >= count }  
end

RSpec::Matchers.define :have_a_unique_word_maximum_of do |count|
  match { |story| words_in(story).uniq.count <= count }
end

RSpec::Matchers.define :have_a_unique_word_minimum_of do |count|
  match { |story| words_in(story).uniq.count >= count }
end

RSpec::Matchers.define :have_a_character_minimum_of do |count|
  match { |story| story.length >= count }
end

RSpec::Matchers.define :mention_a do |subject|
  match { |story| story.match /#{subject}/i }
end

RSpec::Matchers.define :not_mention_a do |subject|
  match { |story| !story.match /#{subject}/i } 
end

RSpec::Matchers.define :begin_with do |phrase|
  match { |story| story.match /^#{phrase}/ }
end

RSpec::Matchers.define :end_with do |phrase|
  match { |story| story.match /#{phrase}$/ }
end

def words_in(story)
  strip_punct(story.downcase).split
end

def strip_punct(story)
  story.gsub(/,|.|!|\?|&|(|)|_|-/, '')
end