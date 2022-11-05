import ctypes

biblioteca = ctypes.CDLL("libfuncao.so")
biblioteca.retornaDobro.argtypes = [ctypes.c_double]
biblioteca.retornaDobro.restype = ctypes.c_double
valor = biblioteca.retornaDobro(10.5)
print(valor)
