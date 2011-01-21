# To change this template, choose Tools | Templates
# and open the template in the editor.

f = Fiber.new { puts "Hi."; Fiber.yield; puts "Nice day."; Fiber.yield; puts "Bye!" }
f.resume
puts "Back to the fiber:"
f.resume
puts "One last message from the fiber:"
f.resume
puts "That's all!"

