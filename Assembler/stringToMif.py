str1 = "TheInternationalSymposiumOnComputerArchitectureIsThePremierForumForNewIdeasAndExperimentalResultsInComputerArchitecture"
str2 = "HPCAAcronymForInternationalSymposiumOnHighPerformanceComputerArchitectureProvidesAHighQualityForumForScientistsAndEngineers"

for i in range(128):
	if i < len(str1):
		print "\t%s  :   %06x;" % (i, ord(str1[i]))
	else:
		print "\t" + str(i) + "  :   000000;"
		
for i in range(128):
	if i < len(str2):
		print "\t%s  :   %06x;" % (i+128, ord(str2[i]))
	else:
		print "\t" + str(i+128) + "  :   000000;"