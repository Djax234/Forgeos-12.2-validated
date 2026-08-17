MODULE := forgeos
OBJS := $(MODULE).pp

all: $(OBJS)

%.pp: %.te
	checkmodule -M -m -o $(MODULE).mod $<
	semodule_package -o $@ -m $(MODULE).mod

install: $(OBJS)
	semodule -i $(MODULE).pp

clean:
	rm -f *.mod *.pp
