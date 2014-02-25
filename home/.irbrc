begin
  require 'wirble'
  Wirble.init
  Wirble.colorize
rescue LoadError
end

begin
  require 'hirb'
  Hirb.enable
rescue LoadError
end
