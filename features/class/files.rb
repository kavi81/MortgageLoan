#type 1
file='C:\Users\DESKTOP_SS\git\gitcommands1.txt'

puts "Type 1 \n"
begin
    File.open(file).each do |line|
  #puts line.to_s
  str="checkout"
  #print line.instance_of?(String)
  puts line.inspect
    if line.chomp==str
      puts line.to_s
      puts line.inspect
    end
  end
rescue
  puts "some problem access the file"
end

=begin
#type 2
puts "Type 2"
f = File.open(file, "r")
f.each_line { |line|
  puts line
}
f.close

str="sathish"
str1="sathish"
if(str==str1)
  puts "match found"
end
=end

