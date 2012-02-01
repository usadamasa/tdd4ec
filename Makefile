# this is set up to by default to make the top level and test with CppUTest
all: codeUnity

clean: cleanCodeUnity

cleanCode: cleanCodeUnity

code: codeUnity

codeUnity:
	make -i -f MakefileUnity.mk

cleanCodeUnity:
	make -i -f MakefileUnity.mk clean
	
everything: CppUTest CppUTestExt
	make -i -C CppUTest all extensions
	make -i -C t0
	make -i -C t1
	make -i -C t2
	make -i -C t3
	make -i -C SandBox
	make -i -f MakefileCppUTest.mk 
	make -i -f MakefileUnity.mk

cleaneverything:
	make -i -C t0 clean
	make -i -C t1 clean
	make -i -C t2 clean
	make -i -C t3 clean
	make -i -C SandBox clean
	make -i -f MakefileCppUTest.mk clean
	make -i -f MakefileUnity.mk clean
	make -i -C CppUTest

