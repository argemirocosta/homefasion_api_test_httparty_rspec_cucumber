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

desc 'Mostrar métodos a serem implementados'
task :dry do
  clean_prj
  sh 'cucumber --dry-run'
end

desc 'Executar os endpoints de health check'
task :health do
  clean_prj
  sh 'bundle exec cucumber -t@healthcheck'
end

desc 'Executar os endpoints smoke tests'
task :smoke do
  clean_prj
  sh 'bundle exec cucumber -t@smoke'
end

desc 'Executar testes em ambiente específico'
task :ambiente,[:ambiente] do |_t, args|
  clean_prj
  sh "bundle exec cucumber -p #{args[:ambiente]}"
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
