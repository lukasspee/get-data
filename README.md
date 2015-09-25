The script `run_analysis.R` will create a tidy data set from the raw data that is contained
in the zip file in this repo. This script is selfcontained and does not require any
packages to be installed except for the default packages included with R.

## Running the script

You can run the script from the R console or from RStudio. Please make sure that you have
set your working directory to the directory containing the script before you run the script.

Then simply run `source("run_analysis.R")` to start the script. After the script is completed
the tidy data can be found in the file `tidy_data.txt` in your working directory.

## Overview of the steps

The script performs the following steps to create the tidy data set:

1. The data from the zip file is extracted to a directory called `data` for further processing.
If this directory already exists (because the script has been run before) this step will be skipped
to save some execution time.

2. Metadata about the activity labels and measured features is read into in-memory data frames from the corresponding
files.

3. Data about the test subjects, measurements and activities are read into in-memory data frames from the corresponding files.

4. Data about the training subjects, measurements and activities are read into in-memory data frames from the corresponding files.

5. The data frames for the test and training data are merged: test measurement are merged with training measurements etc.
This results in three data frames, each with 10299 rows.

6. The feature names are converted to valid column names and assigned as the column names for the data frame containing
all measurements.

7. The measurements data frame is filtered so it only contains columns that relate to mean or standard deviation. The filtering
is based on the name of the column: only columns with names that contain 'mean' or 'std' (case insensitive) are selected.

8. The column with the names from the activities data frame is prepended to the measurements data frame.

9. The column with the IDs from the subjects data frame is prepended to the measurements data frame.

10. From the resulting data frame the averages for the measurements per (subject ID, activity name) pair are computed and
stored in a new data frame.

11. The resulting data frame is ordered by subject ID, activity name.

12. The data frame is written to the output file `tidy_data.txt` in the working directory.
