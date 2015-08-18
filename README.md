Solving A858 - Mystery on Sub Reddit
====================================

My Original commit / history for this is here https://github.com/puppetpies/Snippets/blob/32e91cb9ab7e949b1fcfc615db79580d0e07d7ce/a858.rb

----

This is a project to attempt to solve the mysterious sub reddit for A858 thats been posted interesting possibily encrypted messages on reddit since 2011

https://www.reddit.com/r/Solving_A858

There is the Auto Analysis log tool http://a858.soulsphere.org - by fragglet

Hope you enjoy my attempts.

Something interesting i have found

Keycounter Codes - Repeat occurances

---Snip----

 ["A858_193", 11],
 
 ["A858_203", 11],
 
 ["A858_143", 11],
 
 ["A858_183", 11],
 
 ["A858_209", 11],
 
 ["A858_150", 12],
 
 ["A858_7", 12],
 
 ["A858_109", 12],
 
 ["A858_89", 12],
 
 ["A858_167", 12],
 
 ["A858_45", 12],
 
 ["A858_8", 12],
 
 ["A858_92", 13],
 
 ["A858_57", 13],
 
 ["A858_117", 14],
 
 ["A858_90", 14],
 
 ["A858_112", 15]]

-- The end / Snip ---

Keycounter Codes - Repeat totals occurances taken from the right column of total occurances in a message above.

---Snip----

[["A858_REP_15", 1],

 ["A858_REP_13", 2],

 ["A858_REP_14", 2],

 ["A858_REP_11", 5],

 ["A858_REP_2", 6],

 ["A858_REP_12", 7],

 ["A858_REP_10", 19],

 ["A858_REP_3", 19],

 ["A858_REP_5", 22],

 ["A858_REP_9", 26],

 ["A858_REP_4", 28],

 ["A858_REP_6", 32],

 ["A858_REP_7", 43],

 ["A858_REP_8", 44]]

-- The end / Snip ---


Keycounter Code info Size:

256

I have random posts as strings in the code so it runs a different post everytime


ruby a858.rb -s 0 -f addition


Regards,


Bri in The Sky
