

dtable = read.csv("/media/storage/testing_ground/MATLAB/all_subjects/means_table.txt")

#####################################################################################################
#four-way
FT.aov = with(dtable,
                    aov(cond_mean ~ SF * PV * EL * InfIns + Error(subj_id / (SF * PV * EL * InfIns))))
summary(FT.aov)

######################################################################################################
#two-ways

FT2.aov = with(dtable,
                     aov(cond_mean ~ SF * PV + Error(subj_id / (SF * PV))))
summary(FT2.aov)

###

FT3.aov = with(dtable,
               aov(cond_mean ~ SF * EL + Error(subj_id / (SF * EL))))
summary(FT3.aov)

###

FT4.aov = with(dtable,
               aov(cond_mean ~ SF * InfIns + Error(subj_id / (SF * InfIns))))
summary(FT4.aov)

###

FT5.aov = with(dtable,
               aov(cond_mean ~ PV * EL + Error(subj_id / (PV * EL))))
summary(FT5.aov)

###

FT6.aov = with(dtable,
               aov(cond_mean ~ PV * InfIns + Error(subj_id / (PV * InfIns))))
summary(FT6.aov)

###

FT7.aov = with(dtable,
               aov(cond_mean ~ EL * InfIns + Error(subj_id / (EL * InfIns))))
summary(FT3.aov)

####################################################################################################
#three-ways

FT8.aov = with(dtable,
               aov(cond_mean ~ SF * PV * EL + Error(subj_id / (SF * PV * EL))))
summary(FT8.aov)

###

FT9.aov = with(dtable,
               aov(cond_mean ~ SF * PV * InfIns + Error(subj_id / (SF * PV * InfIns))))
summary(FT9.aov)

###

FT10.aov = with(dtable,
               aov(cond_mean ~ SF * EL * InfIns + Error(subj_id / (SF * EL * InfIns))))
summary(FT10.aov)

###

FT11.aov = with(dtable,
               aov(cond_mean ~ PV * EL * InfIns + Error(subj_id / (PV * EL * InfIns))))
summary(FT11.aov)























