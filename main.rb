require 'ffi'

module MyLib
  extend FFI::Library

  ffi_lib 'c'
  ffi_lib 'target/release/libconst.so'

  attach_variable :VAR, :int
end

puts MyLib.VAR
