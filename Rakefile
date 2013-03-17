task :default => [:test]

desc "Test unittest"
task :test do
  ruby 'test/unittest.rb'
end

desc "Hello world"
task :hello do
  puts "Hello CODE=#{ENV['CODE']}"
end

desc "Test --libdir"
task :lib_hello do
  require 'lib_hello'
  puts lib_hello
end

desc "Task tree"
task :parent => [:child1, :child2] do
  puts "Parent"
end

desc "Child 1"
task :child1 do
  puts "Child 1"
end

desc "Child 2"
task :child2 do
  puts "Child 2"
end

desc "Create text file"
file "hi.txt" do |t|
  puts "Task name #{t.name}"
  sh "echo 'hi' > hi.txt"
end

desc "Create test data"
directory "data"

file "data" do
  sh "echo 123 > data/ibm.txt"
  sh "echo 23 > data/appl.txt"
end

desc "Downlaod all files"
multitask :download => [:download_images, :downlaod_sql, :download_bin] do
  puts "Downloading..."
end

task :download_base do
  puts "Download base..."
  sleep 3
  puts "Base done"
end

task :download_images => [:download_base] do
  puts "Downloading images..."
  sleep 5
  puts "Imgaes done"
end

task :downlaod_sql => [:download_base] do
  puts "Download SQL..."
  sleep 2
  puts "SQL done"
end

task :download_bin => [:download_base] do
  puts "Downloading bin..."
  sleep 3
  puts "Bin done"
end

desc "Print name"
task :name, [:first_name, :last_name] do |t, args|
  args.with_defaults(first_name: "Alic", last_name: "Murphy")
  puts "Your name is #{args.first_name} #{args.last_name}"
end

rule '.o' => ['.c'] do |t|
  puts "Compile"
  sh "cc #{t.source} -o #{t.name}"
end