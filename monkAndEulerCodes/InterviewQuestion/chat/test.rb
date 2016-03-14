require "socket"


host, port = 'localhost', 4000

puts "Opening server socket"
server = TCPServer.open(host, port)

puts "Opening client conn"
client = TCPSocket.open(host, port)

puts "Accepting server side socket"
server_socket = server.accept

puts "Sending stuff to server"
client.puts "hello world"

puts "Reading from server"
msg = server_socket.gets
puts "Got: " + msg

thread = Thread.new do
  puts "Reading server socket"
  msg = server_socket.gets
  puts "Got: " + msg.inspect
end

sleep 1

puts "Closing client socket"
client.close

#puts "Reading server socket"
#msg = server_socket.gets
#puts "Got: " + msg.inspect

thread.join
