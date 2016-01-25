### Guidelines for creating a new prompt

To create a new prompt for someone to write stories against, run the create_prompt rake task:

```
rake create_prompt[your_story_name]
```

This will create a `<your_story_name>_spec.rb` file in this folder, which can accept assertions about the stories people will write.

Examples for each of the existing matchers:

**At most 100 words in the story**
```
it { is_expected.to have_a_word_maximum_of 100 }
```

**At least 100 words in the story**
```
it { is_expected.to have_a_word_minimum_of 100 }
```

**At most 1000 characters in the story**
```
it { is_expected.to have_a_character_maximum_of 1000 }
```

**At least 1000 characters in the story**
```
it { is_expected.to have_a_character_minimum_of 1000 }
```

**At least 50 unique words in the story**
```
it { is_expected.to have_a_unique_word_maximum_of 50 }
```

**At most 50 unique words in the story**
```
it { is_expected.to have_a_unique_word_minimum_of 50 }
```

**The story must contain the phrase "Ganondorf" at least once**
```
it { is_expected.to mention_a "Ganondorf" }
```

**The story must not contain the phrase "Ganondorf"**
```
it { is_expected.to not_mention_a "Ganondorf" }
```

**The story must begin with "A long, long time ago..."**
```
it { is_expected.to begin_with "A long, long time ago..." }
```

**The story must end with "Party on, Garth"**
```
it { is_expected.to end_with "Party on, Garth" }
```

The syntax for creating your own matchers isn't too hard, either! Check out the [story_helper](story_helper.rb) for examples, or the [rspec documentation](https://www.relishapp.com/rspec/rspec-expectations/v/2-4/docs/custom-matchers/define-matcher) on writing your own matchers. Get creative!

Happy prompting!
