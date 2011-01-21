# To change this template, choose Tools | Templates
# and open the template in the editor.


t = Thread.new do
  puts "Starting new thread"
  sleep 5
  puts "At the end of the thread"
end

#t.run
t.join
puts "Outside the thread"
