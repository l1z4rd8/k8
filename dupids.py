#Melis Pekmezcan
#Purpose: Finds the duplicate uids in /etc/passwd file and prints on the console
#!/usr/bin/env python

from collections import defaultdict

# Initialize dictionary of user ids
uids = defaultdict(list)

# loop through password file, building dictionary of uid:[list of usernames]
with open("/etc/passwd") as passwd_file:
for line in passwd_file:
line_array = line.split(":")
uids[line_array[2]].append(line_array[0])

# loop though dictionary.
# If duplicate usernames for uid found, print on standard out

for uid in uids:
if len(uids[uid]) > 1:
print ( uid + ": " + " ".join(uids[uid]))
