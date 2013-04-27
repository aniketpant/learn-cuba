require 'rake/testtask'

Rake::TestTask.new(name=:test) do |t|
  t.libs << "test"
  t.test_files = FileList['test/*.rb']
  # t.verbose = true
end

task :default => :test