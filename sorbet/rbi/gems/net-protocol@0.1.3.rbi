# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `net-protocol` gem.
# Please instead update this file by running `bin/tapioca gem net-protocol`.

# source://net-protocol//lib/net/protocol.rb#115
class Net::BufferedIO
  # @return [BufferedIO] a new instance of BufferedIO
  #
  # source://net-protocol//lib/net/protocol.rb#116
  def initialize(io, read_timeout: T.unsafe(nil), write_timeout: T.unsafe(nil), continue_timeout: T.unsafe(nil), debug_output: T.unsafe(nil)); end

  # source://net-protocol//lib/net/protocol.rb#248
  def <<(*strs); end

  # source://net-protocol//lib/net/protocol.rb#143
  def close; end

  # @return [Boolean]
  #
  # source://net-protocol//lib/net/protocol.rb#139
  def closed?; end

  # Returns the value of attribute continue_timeout.
  #
  # source://net-protocol//lib/net/protocol.rb#128
  def continue_timeout; end

  # Sets the attribute continue_timeout
  #
  # @param value the value to set the attribute continue_timeout to.
  #
  # source://net-protocol//lib/net/protocol.rb#128
  def continue_timeout=(_arg0); end

  # Returns the value of attribute debug_output.
  #
  # source://net-protocol//lib/net/protocol.rb#129
  def debug_output; end

  # Sets the attribute debug_output
  #
  # @param value the value to set the attribute debug_output to.
  #
  # source://net-protocol//lib/net/protocol.rb#129
  def debug_output=(_arg0); end

  # @return [Boolean]
  #
  # source://net-protocol//lib/net/protocol.rb#135
  def eof?; end

  # source://net-protocol//lib/net/protocol.rb#131
  def inspect; end

  # Returns the value of attribute io.
  #
  # source://net-protocol//lib/net/protocol.rb#125
  def io; end

  # source://net-protocol//lib/net/protocol.rb#153
  def read(len, dest = T.unsafe(nil), ignore_eof = T.unsafe(nil)); end

  # source://net-protocol//lib/net/protocol.rb#173
  def read_all(dest = T.unsafe(nil)); end

  # Returns the value of attribute read_timeout.
  #
  # source://net-protocol//lib/net/protocol.rb#126
  def read_timeout; end

  # Sets the attribute read_timeout
  #
  # @param value the value to set the attribute read_timeout to.
  #
  # source://net-protocol//lib/net/protocol.rb#126
  def read_timeout=(_arg0); end

  # source://net-protocol//lib/net/protocol.rb#202
  def readline; end

  # source://net-protocol//lib/net/protocol.rb#190
  def readuntil(terminator, ignore_eof = T.unsafe(nil)); end

  # source://net-protocol//lib/net/protocol.rb#248
  def write(*strs); end

  # Returns the value of attribute write_timeout.
  #
  # source://net-protocol//lib/net/protocol.rb#127
  def write_timeout; end

  # Sets the attribute write_timeout
  #
  # @param value the value to set the attribute write_timeout to.
  #
  # source://net-protocol//lib/net/protocol.rb#127
  def write_timeout=(_arg0); end

  # source://net-protocol//lib/net/protocol.rb#256
  def writeline(str); end

  private

  # source://net-protocol//lib/net/protocol.rb#319
  def LOG(msg); end

  # source://net-protocol//lib/net/protocol.rb#310
  def LOG_off; end

  # source://net-protocol//lib/net/protocol.rb#315
  def LOG_on; end

  # source://net-protocol//lib/net/protocol.rb#231
  def rbuf_consume(len); end

  # source://net-protocol//lib/net/protocol.rb#210
  def rbuf_fill; end

  # source://net-protocol//lib/net/protocol.rb#274
  def write0(*strs); end

  # source://net-protocol//lib/net/protocol.rb#264
  def writing; end
end

# source://net-protocol//lib/net/protocol.rb#326
class Net::InternetMessageIO < ::Net::BufferedIO
  # @return [InternetMessageIO] a new instance of InternetMessageIO
  #
  # source://net-protocol//lib/net/protocol.rb#327
  def initialize(*_arg0, **_arg1); end

  # *library private* (cannot handle 'break')
  #
  # source://net-protocol//lib/net/protocol.rb#349
  def each_list_item; end

  # Read
  #
  # source://net-protocol//lib/net/protocol.rb#336
  def each_message_chunk; end

  # Write
  #
  # source://net-protocol//lib/net/protocol.rb#367
  def write_message(src); end

  # source://net-protocol//lib/net/protocol.rb#355
  def write_message_0(src); end

  # source://net-protocol//lib/net/protocol.rb#380
  def write_message_by_block(&block); end

  private

  # source://net-protocol//lib/net/protocol.rb#423
  def buffer_filling(buf, src); end

  # source://net-protocol//lib/net/protocol.rb#399
  def dot_stuff(s); end

  # source://net-protocol//lib/net/protocol.rb#415
  def each_crlf_line(src); end

  # source://net-protocol//lib/net/protocol.rb#403
  def using_each_crlf_line; end
end

# source://net-protocol//lib/net/protocol.rb#504
Net::NetPrivate::Socket = Net::InternetMessageIO

# source://net-protocol//lib/net/protocol.rb#68
Net::ProtocRetryError = Net::ProtoRetriableError

# source://net-protocol//lib/net/protocol.rb#28
class Net::Protocol
  private

  # source://net-protocol//lib/net/protocol.rb#40
  def ssl_socket_connect(s, timeout); end

  class << self
    # source://net-protocol//lib/net/protocol.rb#32
    def protocol_param(name, val); end
  end
end

# source://net-protocol//lib/net/protocol.rb#29
Net::Protocol::VERSION = T.let(T.unsafe(nil), String)

# source://net-protocol//lib/net/protocol.rb#479
class Net::ReadAdapter
  # @return [ReadAdapter] a new instance of ReadAdapter
  #
  # source://net-protocol//lib/net/protocol.rb#480
  def initialize(block); end

  # source://net-protocol//lib/net/protocol.rb#488
  def <<(str); end

  # source://net-protocol//lib/net/protocol.rb#484
  def inspect; end

  private

  # This method is needed because @block must be called by yield,
  # not Proc#call.  You can see difference when using `break' in
  # the block.
  #
  # @yield [str]
  #
  # source://net-protocol//lib/net/protocol.rb#497
  def call_block(str); end
end

# ReadTimeout, a subclass of Timeout::Error, is raised if a chunk of the
# response cannot be read within the read_timeout.
#
# source://net-protocol//lib/net/protocol.rb#80
class Net::ReadTimeout < ::Timeout::Error
  # @return [ReadTimeout] a new instance of ReadTimeout
  #
  # source://net-protocol//lib/net/protocol.rb#81
  def initialize(io = T.unsafe(nil)); end

  # Returns the value of attribute io.
  #
  # source://net-protocol//lib/net/protocol.rb#84
  def io; end

  # source://net-protocol//lib/net/protocol.rb#86
  def message; end
end

# The writer adapter class
#
# source://net-protocol//lib/net/protocol.rb#449
class Net::WriteAdapter
  # @return [WriteAdapter] a new instance of WriteAdapter
  #
  # source://net-protocol//lib/net/protocol.rb#450
  def initialize(writer); end

  # source://net-protocol//lib/net/protocol.rb#464
  def <<(str); end

  # source://net-protocol//lib/net/protocol.rb#454
  def inspect; end

  # source://net-protocol//lib/net/protocol.rb#458
  def print(str); end

  # source://net-protocol//lib/net/protocol.rb#473
  def printf(*args); end

  # source://net-protocol//lib/net/protocol.rb#469
  def puts(str = T.unsafe(nil)); end

  # source://net-protocol//lib/net/protocol.rb#458
  def write(str); end
end

# WriteTimeout, a subclass of Timeout::Error, is raised if a chunk of the
# response cannot be written within the write_timeout.  Not raised on Windows.
#
# source://net-protocol//lib/net/protocol.rb#99
class Net::WriteTimeout < ::Timeout::Error
  # @return [WriteTimeout] a new instance of WriteTimeout
  #
  # source://net-protocol//lib/net/protocol.rb#100
  def initialize(io = T.unsafe(nil)); end

  # Returns the value of attribute io.
  #
  # source://net-protocol//lib/net/protocol.rb#103
  def io; end

  # source://net-protocol//lib/net/protocol.rb#105
  def message; end
end
