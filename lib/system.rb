class System
  def get_cpu_usage
    "top -b -n1 | grep \"Cpu(s)\" | awk '{print $2 + $3}'"
  end

  def get_free_space filesystem
    # Size Avail Use%
    "df -m #{filesystem} | tail -n1 | awk '{print $1, $3, $4}'"
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

