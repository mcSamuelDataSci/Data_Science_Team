# ====================================================================================================
# "countyPopulationProcessor.R" file                                                                 |
#                                                                                                    |
#            Reads in age-race-sex-1980-2015 text file provided by CDPH-CID-DCDC-STDCB               |
#            Subsets and processes data, and saves as County by year total population file           |
#            Adds stratification by age group, and saves another file (for age adjustement)          |
#            Generates total 2015 CA pop by age to use as "Standard Population" for age adjustment   |
#                                                                                                    |
#                                                                                                    |   
# ====================================================================================================


# -- Set locations and load packages ---------------------------------------------------------------------------------------------------


library(dplyr)
library(readr)


# --------------------------------------------------------------------------------------------------------
# California Physical Fitness Test (PFT) program
#   https://www.cde.ca.gov/ta/tg/pf/pftresearch.asp

# Other California School data 
#   https://www.cde.ca.gov/ds/si/ds/pubschls.asp  - School Metadata
#   https://www.cde.ca.gov/ta/ac/cm/              - Performance etc. data
  
fitnessgram_data   <- read_csv("Fitnessgram_data/2017_18_ResearchFile.txt") # use as needed: ,col_types="_ciiiii") 
fitnessgram_labels <- read_csv("Fitnessgram_data/2017_18_Entities.txt")


fg_districts_data  <- filter(fitnessgram_data,Level_Number==2,        # District
                                              Report_Number==0)  %>%  # All Students   
                                mutate(link=paste0(DIST,ChrtNum))
                                       
district_codes_names <- filter(fitnessgram_labels, scode=="0000000", dcode !="00000") %>%
                          mutate(link=paste0(dcode,chrtnum)) %>%
                          select(link,chrtnum, dcode, District, County)

fg_districts_info     <- left_join(fg_districts_data,
                         district_codes_names,
                         by= "link")

test_selected   <- "Upper Body Strength"
county_selected <- "Contra Costa"                         
                         
selected_info <- filter(fg_districts_info, Line_Text == test_selected,County==county_selected)

hist(as.numeric(selected_info$Perc5a))


# --------------------------------------------------------------------------------------------------------


immunization_data  <- read.csv("https://data.chhs.ca.gov/dataset/bc38e725-9180-49e7-97e5-e16cb413a40c/resource/4319a7e8-5c63-460c-b412-c7474fd7da2a/download/izkindergarten2016-17and2017-18withannotations.csv")


selected_iz_data <- filter(immunization_data,
                           County=="CONTRA COSTA",
                           Public_Private=="PUBLIC",
                           Category=="UP-TO-DATE")


hist(selected_iz_data$Percent,breaks=50)
plot(selected_iz_data$Enrollment,selected_iz_data$Percent)





