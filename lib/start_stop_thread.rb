# To change this template, choose Tools | Templates
# and open the template in the editor.

t3 = Thread.new do
puts "[Starting thread]"
Thread.stop
puts "[Resuming thread]"
end

puts "Status of thread: #{t3.status}"              #Status of thread: sleep
puts "Is thread stopped? #{t3.stop?}"              #Is thread stopped? true
puts "Is thread alive? #{t3.alive?}"               #Is thread alive? true

puts "Waking up thread and joining it..."
t3.wakeup
t3.join                                            #[Resuming thread]
#puts
puts "Is thread alive? #{t3.alive?}"               #Is thread alive? false
puts "Inspect string for thread: #{t3.inspect}"    #Inspect string for thread:  #<Thread:0x28d20 dead>
t3.exit
puts "Is thread alive? #{t3.alive?}"

