TOPNAME = testbench
IVERILOG = iverilog
IVERILOG_FLAGS += -g2005-sv

# Note: if need include dir or define names:
# +incdir+path
# +define+name=value

all:
	find . -type f -regex ".*\.\(v\|sv\)" > ivfiles.f
	$(IVERILOG) $(IVERILOG_FLAGS) -o $(TOPNAME) -f ivfiles.f -s $(TOPNAME)

# .PHONY: files
# files:
#     find ./ -name "*.[v|sv]" > ivfiles.f

sim:
	vvp -n $(TOPNAME) -l err.log >> run.log
	# ./$(TOPNAME)

wave:
	gtkwave ./dump.vcd &
	
clean:
	rm -rf $(TOPNAME)
	rm dump.vcd
	# rm run.log

wv: wave

cl: clean

.PHONY: sim wave wv clean cl

