###############
####Exercise 1
###############

# Select the correct folder on which to work
# this changes according to the computer, so change the below command
# or use the "Files" box in RStudio (bottom right)
# or the  menu "Session" -> "Set working directory"
setwd("/home/rsimone/ownCloud/Stylometry datasets/Exercise_1")

# Call the Stylo library (this has to be done each time you start R)
library(stylo)

# Call the Stylo main function and work in the GUI

# Analysis 1. Dendrogram
stylo()
# Input: plain text; Language: Italian; UTF-8 (check)
# Features: words; ngram size: 1; MFW minimum/maximum: 100
# Statistics: cluster analysis; Delta distance: Classic Delta
# (leave the rest to its default)

# Analysis 2. Consensus tree
stylo()
# Input: plain text; Language: Italian; UTF-8 (check)
# Features: words; ngram size: 1; MFW minimum: 100; MFW maximum: 1000; increment: 100 
# Statistics: consensus tree; Delta distance: Classic Delta
# (leave the rest to its default)

# Analysis 3. Attribution
stylo()
# Move the "UNKNOWN.txt" file from the "other material" folder to "corpus"
# Keep the configuration as before
# Who is the author of "UNKNOWN"?

# Analysis 4. Classic Delta vs. Cosine Delta
stylo()
# Move the "deledda_fior_1891.txt" file from the "other material" folder to "corpus"
# Repeat the analysis with the same configuration
stylo()
# Repeat the analysis by changing Delta distance: Cosine Delta

# Analysis 5. Test text size
stylo()
# Sampling: Random; Sample size: 1000
stylo()
# Sampling: Random; Sample size: 5000


###############
####Exercise 2
###############

# Change working directory
setwd("/home/rsimone/ownCloud/Stylometry datasets/Exercise_2")

# run stylo
stylo()
# Input: plain text; Language: Italian; UTF-8 (check)
# Features: words; ngram size: 1; MFW minimum: 200; MFW maximum: 2000; increment: 200
# Statistics: consensus tree; Delta distance: Cosine Delta
# Sampling: No

# find the file "Exercise_2_Consensus_200-2000_MFWs_Culled_0__wurzburg_C_0.5_EDGES.csv"
# and open it with Gephi

