#!/usr/bin/env ruby

require "net/ssh"

class Ssh
  def initialize host, user, password
    @host = host
    @user = user
    @password = password
  end

  def exec command
    Net::SSH.start(@host, @user, password: @password) do |ssh|
      ssh.exec!(command)
    end
  end
end
