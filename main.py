from cffi import FFI

ffi = FFI()

ffi.cdef("""
extern const int VAR;
""")

libconst = ffi.dlopen('target/release/libconst.dylib')

if __name__ == "__main__":
    # Trigger NotImplementedError
    print(libconst.VAR)
