#!/usr/bin/env ruby

class System
  def get_cpu_usage
    "top -b -n1 | grep \"Cpu(s)\" | awk '{print $2 + $3}'"
  end

  def free_space filesystem
    "df -h #{filesystem} | tail -n1 | cut -d' ' -f7"
  end

  def get_memory_usage
    # mem
  end

  def get_vm_usage
    # vm
  end

  def get_io_stat
    # io
  end
end
