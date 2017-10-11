require 'yaml'

# p File.read('my_text.txt')

f1 = File.open('my_text.txt', 'a+')  #w+ overwrites so does w

# p f1.read
p f1.inspect #reference to the file not the actual file
f1.write("Watch out I'm coming in")
f1.close

File.open("my_text_too1", "w") do |f|
  f.puts "This is a new file with text I'm writing"
end

f2 = File.open("my_text_too1", 'a+') do
  |f1|
  while line = f1.gets
    puts line
  end
end


f3 = File.open("pteradactyl_data.txt", 'r+')
p f3.read
f3.rewind
# p f3.read
booger = ''
f3.read(5, booger)
p booger

File.open("pteradactyl_data.txt") do |f|
  f.seek(3, IO::SEEK_SET)
  p f.read(3)
end

data = File.readlines("pteradactyl_data.txt")
p data[0]


File.open("yaml_data.yaml", 'r').each do |f|
  p YAML::load(f)
end

f4 = File.open("new_yaml.yaml", 'w+')
f4.puts YAML::dump("Test")

f5 = open('my_text.txt', 'w')
f5.write("New Data")
f5.close
