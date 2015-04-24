str1 = "BAab98"
str2 = "Aab9B8"

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
		
def longest_common_substring(s1, s2):
	m = [[0] * (1 + len(s2)) for i in xrange(1 + len(s1))]
	longest, x_longest = 0, 0
	for x in xrange(1, 1 + len(s1)):
		for y in xrange(1, 1 + len(s2)):
			if s1[x - 1] == s2[y - 1]:
			    m[x][y] = m[x - 1][y - 1] + 1
			    if m[x][y] > longest:
				longest = m[x][y]
				x_longest = x
			else:
			    m[x][y] = 0
	print x_longest - longest, longest
	return s1[x_longest - longest: x_longest]


print longest_common_substring(str1, str2)