SEMS_ACTIVE_SITES=read.csv("data/SEMS_ACTIVE_SITES.csv",header=TRUE)
SEMS_ARCHIVED_SITES=read.csv("data/SEMS_ARCHIVED_SITES.csv",header=TRUE)
ZIP_LIST=read.csv("data/zipcodes.csv",header=TRUE)
zips<-as.matrix(ZIP_LIST)
SEMS_ACTIVE_SITES$SEMS_ACTIVE_SITES.SITE_ZIP_CODE<-substr(SEMS_ACTIVE_SITES$SEMS_ACTIVE_SITES.SITE_ZIP_CODE,0,5)
active<-SEMS_ACTIVE_SITES[SEMS_ACTIVE_SITES$SEMS_ACTIVE_SITES.SITE_ZIP_CODE %in% zips,]
archived<-SEMS_ARCHIVED_SITES[SEMS_ARCHIVED_SITES$SEMS_ARCHIVED_SITES.SITE_ZIP_CODE %in% zips,]
write.csv(archived,"data/archived.csv")
write.csv(active,"data/active.csv")
