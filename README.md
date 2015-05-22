# RSpec Fairy Tales
### Open source storytelling with 100% test coverage
[ ![Codeship Status for gdpelican/rspec_fairy_tales](https://codeship.com/projects/4248a0a0-caf0-0132-840e-4a3e524f24ba/status?branch=master)](https://codeship.com/projects/75620)

RSpec Fairy Tales is an experiment in community-driven creative writing, where given a prompt (in the form of a code spec), writers are asked to submit stories (in the form of a pull request) which are deemed successes or failures based on whether they pass the spec.

#### Adding a story

clone the repository
```
git clone https://github.com/gdpelican/rspec_fairy_tales.git
```

Pick a story from the list of [created prompts](./spec/prompts/), and create an empty text file in the matching directory in the [library](./library) folder.

Open the file, and write away!

When you're finished, you can run the tests against it by running

```
bundle install && bundle exec rspec
```

Or submit a pull request to have our CI run the specs against it.

**Writers**: New to github? I've tried to make the technical knowledge barrier to entry as low as possible, but feel free to raise an issue [here](http://www.github.com/gdpelican/rspec_fairy_tales/issues/new) if the coding and gitting stuff is getting in the way of the writing stuff.

#### Adding a story prompt
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

**Prompters**: I've written some basic constraints in the form of custom RSpec matchers in [spec/story_helper.rb](spec/story_helper.rb), but I want to encourage creativity and experimentation in this area. Force the author to use the same word in every sentence? Require the first word of every sentence to be a palindrome? No vowels? The possibilities are endless!
