def find_stories(story_name)
  [].tap do |result|
    Dir.glob("library/#{story_name}/*.txt") do |story|
      result << File.read(story)
    end
  end
end

require 'story_helper'