#!/usr/bin/env ruby

class System
  def self.get_cpu_usage
    "top -b -n1 | grep \"Cpu(s)\" | awk '{print $2 + $3}'"
  end

  def self.free_space
    # df -h
  end

  def self.get_memory_usage
    # mem
  end

  def self.get_vm_usage
    # vm
  end

  def self.get_io_stat
    # io
  end
end
