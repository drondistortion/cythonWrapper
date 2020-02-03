cdef extern from "xxxCNAMExxx.cpp":
    pass

cdef extern from "xxxCNAMExxx.h":
    cdef cppclass iarduino_I2C_SHT:
        xxxCNAMExxx() except +
        xxxCNAMExxx(unsigned char) except +
        bint begin()
        bint changeAddress(unsigned char)
        bint reset()
        unsigned char getAddress()
        unsigned char getVersion()
