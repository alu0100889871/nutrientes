require "bundler/gem_tasks"
require "rspec/core/rake_task"

task :default => :spec

desc "Ejecutar las espectativas de la clase "
task :spec do
  sh "rspec -I. spec/alimento_spec.rb"
end

desc "Ejecutar las espectativas de la clase Lista doblemente enlazada"
task :spec do
  sh "rspec -I. spec/listadll_spec.rb"
end

desc "Ejecutar las espectativas para que los menús sean comparables y enumerables"
task :spec do
  sh "rspec -I. spec/comp_y_enum_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/alimento_spec.rb --format documentation"
end

