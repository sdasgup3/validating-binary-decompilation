# 1. Start in a function
# 2. Enum the func instructions and look for pattern of "heads"
# 3. print the instruction 2 before the beginning of the pattern
# 3. look for the same pattern elsewhere in the file

def main():
	FUNCTION_NAME = 'start' #Change this to whatever func you want to look for. May have to change to _start in some cases or code your own logic

	print "===Welcome to StartFinder v0.1 by moveax41h==="
	cursor = 0
	real_names = []
	addresses = []
	names = idautils.Names()
	# Populate the two above lists with their respective data from the list of tuples returned by idautils.Names()
	for n in names:
		real_names.append(n[1]) # real_names[30] ------> addresses[30]
		addresses.append(n[0])
	# search for a 'start' name in the names list and if it is there, set cursor to the address of beginning of it
	for rn in real_names:
		if rn == FUNCTION_NAME:
			cursor = addresses[int(real_names.index(FUNCTION_NAME))]
			break
	if cursor: #if a start was found, assign it to the cursor and then 
		myFunc = idaapi.get_func(cursor)
		while cursor < myFunc.endEA:
			print "%s" % idc.GetDisasm(cursor)
			if idc.GetMnem(cursor) == 'call' and idc.GetMnem(idc.prev_head(cursor)) == 'jmp':
				idc.MakeComm(cursor, 'This is a call after a jump!')
			cursor = idc.next_head(cursor,myFunc.endEA) # MaxEA()
	print "===StartFinder end. Thanks for using==="

if __name__ == "__main__":
    main()