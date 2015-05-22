require 'bundler/gem_tasks'
require 'erb'

task :create_prompt, [:name] do |t, args|
  @name = args[:name]
  library_dir    = File.join '.', 'library', @name
  library_readme = File.join library_dir, 'README.md'
  prompt_file    = File.join '.', 'spec', 'prompts', "#{@name}_spec.rb"

  Dir.mkdir library_dir unless File.directory? library_dir
  File.write library_readme, ERB.new(File.read('./templates/readme.template.erb')).result
  File.write prompt_file,    ERB.new(File.read('./templates/prompt_spec.template.erb')).result

  puts "Prompt successfully created for #{@name}!"
end
