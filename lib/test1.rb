# To change this template, choose Tools | Templates
# and open the template in the editor.

# To change this template, choose Tools | Templates
# and open the template in the editor.

t1 = Thread.new do
puts "[Starting thread]"
Thread.stop
puts "[Resuming thread]"
end

puts "Status of thread: #{t1.status}"              #Status of thread: sleep
puts "Is thread stopped? #{t1.stop?}"              #Is thread stopped? true
puts "Is thread alive? #{t1.alive?}"               #Is thread alive? true

puts "Waking up thread and joining it..."
t1.wakeup
t1.join                                            #[Resuming thread]
puts
puts "Is thread alive? #{t1.alive?}"               #Is thread alive? false
puts "Inspect string for thread: #{t1.inspect}"    #Inspect string for thread:  #<Thread:0x28d20 dead>
#t.exit



