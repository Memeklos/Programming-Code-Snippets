# Script to read JSON objects from a file, and return information about the tweets

# Open Data File
with open('tweet1.json', 'r') as f:
	data = f.read()
#	data = f.readlines()

# Create File for Sorted Information
with open('sortedTweets.txt', 'w') as f:
	f.writelines(data)

# print(type(data))		# Prints the type(?) of data
# data.sort()			# Sorts data
# print(data)			# Prints data to screen


