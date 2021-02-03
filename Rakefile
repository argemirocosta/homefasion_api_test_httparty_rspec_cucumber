require 'cucumber'
require 'cucumber/rake/task'
require 'parallel'

desc 'Instalar gems'
task :gems do
  sh 'bundle install'
end

desc 'Analisar código'
task :rubocop do
  clean_prj
  sh 'bundle exec rubocop -a --format html --out report/rubocop/rubocop_report.html'
end

desc 'Executar as features criticas sequencial'
task :smoke_tests, [:ambiente] do |_t, args|
  clean_prj
  sh "bundle exec cucumber -p #{args[:ambiente]}"
end

desc 'Executar as features por tags sequencial'
task :smoke_tags, [:ambiente, :tag] do |_t, args|
  clean_prj
  sh "bundle exec cucumber -p #{args[:ambiente]} -t #{args[:tag]}"
end

desc 'Executar regressao paralela'
task :regression_tests, [:ambiente, :seq] do |_t, args|
  clean_prj
  sh "bundle exec parallel_cucumber features/ -n #{args[:seq]} -o '-p #{args[:ambiente]}'"
end

def clean_prj
  puts 'Limpando reports...'
  path_report = 'report'
  FileUtils.rm_rf(path_report) if File.directory?(path_report)
  FileUtils.mkdir_p("#{path_report}/parallel")
  FileUtils.mkdir_p("#{path_report}/sequencial")
  FileUtils.mkdir_p("#{path_report}/rubocop")
  puts 'Limpeza concluida!'
end
