#!/usr/bin/env ruby
require "socket"

class Server
  def initialize(host, port)
    @server = TCPServer.open(host, port)
    @rooms = Hash.new
    @clients = Hash.new
  end

  def run
    loop do
      # Accept the socket connection and save it
      socket = @server.accept

      # Create a new thread and save it
      thread = Thread.new do
        name = socket.gets.chomp
        if @clients.has_key? name
          socket.puts "This username already exist"
        else
          puts "Client '#{name}' has joined"
          @clients[name] = socket
          socket.puts "Connection established, Thank you for joining! Happy chatting"
          listen_user_messages(name, socket)
        end
      end
    end
  end

  # Listen for messages on a socket, and relay them to all other clients
  def listen_user_messages( name, socket )
    loop do
      msg = socket.gets

      # If we get nil, the client has disconnected
      if msg.nil?
        puts "Client '#{name}' has disconnected"
        @clients[name].close
        @clients.delete name
        return
      end

      # Send the message to all other clients
      @clients.each do |other_name, other_client|
        unless other_name == name
          other_client.puts "#{name.to_s}: #{msg.chomp}"
        end
      end
    end
  end
end

Server.new("localhost", 3000).run
