# To change this template, choose Tools | Templates
# and open the template in the editor.

puts "Trying to read in some files..."
text = []
t = Thread.new do
  (0..2).each do |n|
    begin
      File.open("../part0#{n}") do |f|
        text << f.readlines
      end
    rescue Errno::ENOENT
      puts "Message from thread: Failed on n=#{n}"
      Thread.exit     #To kill the thread exit/terminate/kill
    end
  end
end
t.join
puts "Finished!"

