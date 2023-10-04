#

library(boxr)

#=====================================
# Authenticate Box
# May need to update client secret periodically, or when Box app settings are changed (?) 

box_auth(client_id = "7npn73lftgc6r5uzzejfdxkq02r6ah30", 
    client_secret = "CsdTSbJpt07DkBOVfyrmBYFw4Sgw4jNh",
    interactive=FALSE,cache=TRUE)

#=====================================
# Read in data and merge tables

samples0<-box_read(853293893514)
samples<-samples0
measurements0<-box_read(853292641714)
measurements<-measurements0

#PATH<-"https://raw.githubusercontent.com/waterfolk/waterfolkdata/main/bottles.csv"
#bottles0 <- fread(PATH, header =  TRUE, sep = ',',stringsAsFactors=FALSE)

#PATH<-"https://raw.githubusercontent.com/waterfolk/waterfolkdata/main/measurements.csv"
#measurements0 <- fread(PATH, header =  TRUE, sep = ',',stringsAsFactors=FALSE)

write.csv(samples,"samples.csv",row.names=FALSE)
write.csv(measurements,"measurements.csv",row.names=FALSE)

