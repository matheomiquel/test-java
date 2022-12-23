JFLAGS = -g
JC = javac
.SUFFIXES: .java .class
compil:
		$(JC) $(JFLAGS) $(addsuffix .java, ${FILES})

FOLDER = \
        tata \
        tata/test

FILES = \
        tata/Main \
        tata/test/Tutu \

CLASS = \
        Main \
        Tutu \ 

space=
double_space = $(space)  $(space)
run:
		java -cp ${subst ${double_space},:,${foreach t,${FOLDER}, $(t)}} ${CLASS}
clean:
		$(RM) $(addsuffix .class, ${FILES})