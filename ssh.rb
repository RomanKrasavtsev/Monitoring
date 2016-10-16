#!/usr/bin/env ruby

# gem install net-s
require "net/ssh"

class SSH
  def initialize
    SSH_HOST = ENV["SSH_HOST"]
    SSH_USER = ENV["SSH_USER"]
    SSH_PASSWORD = ENV["SSH_PASSWORD"]
  end

  def exec command
    Net::SSH.start(SSH_HOST, SSH_USER, password: SSH_PASSWORD) do |ssh|
      ssh.exec!(command)
    end
end
