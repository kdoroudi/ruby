#!/usr/bin/env ruby -w
require "socket"

client = nil

Signal.trap("TERM") do
  puts "got TERM signal"
  client.close if client
  abort
end

Signal.trap("INT") do
  puts "got TERM signal"
  client.close if client
  abort
end



class Client
  def initialize(host, port)
    @server = TCPSocket.open(host, port)
    @request = nil
    @response = nil
  end

  def start
    listen
    send
    @request.join
    @response.join
  end

  def close
    puts "Closing connection to server"
    @server.close
  end

  def listen
    @response = Thread.new do
      loop do
        puts @server.gets.chomp
      end
    end
  end

  def send
    puts "Enter the username:"
    @request = Thread.new do
      loop do
        msg = $stdin.gets.chomp
        @server.puts msg
      end
    end
  end
end

client = Client.new('localhost', 3000)
client.start
