# RSpec Fairy Tales
### Open source storytelling with 100% test coverage
[ ![Codeship Status for gdpelican/rspec_fairy_tales](https://codeship.com/projects/4248a0a0-caf0-0132-840e-4a3e524f24ba/status?branch=master)](https://codeship.com/projects/75620)

##### Adding a story prompt
clone the repository
```
git clone https://github.com/gdpelican/rspec_fairy_tales.git
```
install the bundle
```
cd rspec_fairy_tales && bundle install
```

run the 'create_prompt' rake task with a story name
```
rake create_prompt[mario_brothers_mystery]
```

Open the spec for your story in the generated folder
```
subl spec/prompts/mario_brothers_mystery_spec.rb
```

And spec away!
```
  it { is_expected.to mention_a "heroic plumber with a red hat" }
  it { is_expected.to mention_a "gruesome murder" }
  it { is_expected.to have_a_word_maximum_of 1000 }
```

Check out [spec/story_helper.rb](spec/story_helper.rb) for the current matchers (or write your own!)
