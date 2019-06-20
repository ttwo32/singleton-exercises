require 'singleton'

class MyLogger
  include Singleton
  
  def initialize
    @history = []
  end
  
  def debug(message)
    @history << message
    print "DEBUG: #{message}"
  end
  
  def info(message)
    @history << message
    print "INFO: #{message}"
  end
  
  def error(message)
    @history << message
    $stderr.print "ERROR: #{message}"
  end
  
  def history
    @history
  end
  
  def clear_history
    @history = []
  end
  
end
