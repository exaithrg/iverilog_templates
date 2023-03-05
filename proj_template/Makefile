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

.PHONY: sim
sim:
	vvp -n $(TOPNAME) -l err.log >> run.log
	# ./$(TOPNAME)

.PHONY: wv
wv:
	gtkwave ./dump.vcd &
	
.PHONY: cl
cl:
	rm -rf $(TOPNAME)
	rm dump.vcd
	# rm run.log

