library(data.table)

## Replace your group's information in the following vectors
first_names <- c('first_name1',
                 'first_name2',
                 'first_name3',
                 'first_name4') ## YOUR FIRST NAMES HERE
last_names <- c('last_name1',
                'last_name2',
                'last_name3',
                'last_name4') ##YOUR LAST NAMES HERE
matriculation_nrs <- c('0001',
                       '0002',
                       '0003',
                       '0004' ) # YOUR MATRICULATION NRs (as characters) HERE

## Store your information in a data table
dt <- data.table(MatriculationNr=matriculation_nrs,
                 FirstName=first_names,
                 LastName=last_names)
View(dt) ## See if it displays properly

## Save the data table as a file
out_path <- 'registration.csv' ## the file will be stored in the current working directory
fwrite(dt, out_path)

## Test if you can read the file properly
dt_test <- fread(out_path) 
View(dt_test)