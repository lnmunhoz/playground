class Line
  def self.initGame? (line)
    !!(line.match(/^[0-9]{1,}:[0-9]{1,} InitGame:/))
  end

  def self.shutdownGame? (line)
    !!(line.match(/^[0-9]{1,}:[0-9]{1,} ShutdownGame:/))
  end

  def self.kill? (line)
    !!(line.match(/^[0-9]{1,}:[0-9]{1,} Kill:/))
  end
end
