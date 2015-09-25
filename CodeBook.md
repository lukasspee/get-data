## About the data

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.

The following processing has been applied to the data:
1. Using the embedded accelerometer and gyroscope of the smart phone, a  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz has been captured.
2. The raw signals were pre-processed by applying noise filters and sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
3. The sensor acceleration signal, which has gravitational and body motion components, was separated into body acceleration and gravity using a Butterworth low-pass filter with a corner frequency of 20 Hz and a cutoff frequency of 0.3 Hz.
4. The body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
5. The magnitude of the three-dimensional signals derived in the previous step were calculated using the Euclidean norm.
6. A Fast Fourier Transform (FFT) was applied to some of these signals producing a vector of frequency domain signals.
7. Additional vectors were obtained by averaging the signals in a signal window sample and used to calculate a number of angle variables.
8. The windows were then grouped by subject and activity and the average value of each of the variables was computed for every such group.

## About the variables

For each combination of subject and activity a number of variables have been measured and calculated.
These are the variables numbered 3 to 88 in the list at the end of this section.

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ: the body acceleration signals obtained in step 3 from the previous section.
tGravityAcc-XYZ: the gravity acceleration signals obtained in step 3 from the previous section.
tBodyAccJerk-XYZ: the body linear acceleration Jerk signals obtained in step 4 from the previous section.
tBodyGyro-XYZ: the body angular velocity signals obtained in step 2 from the previous section.
tBodyGyroJerk-XYZ: the body angular velocity Jerk signals obtained in step 4 from the previous section.
tBodyAccMag: the magnitude for the body linear acceleration signals obtained in step 5 from the previous section.
tGravityAccMag: the magnitude for the gravity linear acceleration signals obtained in step 5 from the previous section.
tBodyAccJerkMag: the magnitude for the body linear acceleration Jerk signals obtained in step 5 from the previous section.
tBodyGyroMag: the magnitude for the body angular velocity signals obtained in step 5 from the previous section.
tBodyGyroJerkMag: the magnitude for the body angular velocity Jerk signals obtained in step 5 from the previous section.
fBodyAcc-XYZ: the frequency for the body acceleration signals obtained in step 6 from the previous section.
fBodyAccJerk-XYZ: the frequency for the body acceleration Jerk signals obtained in step 6 from the previous section.
fBodyGyro-XYZ: the frequency for the body angular velocity signals obtained in step 6 from the previous section.
fBodyAccMag: the frequency for the magnitude for the body linear acceleration signals obtained in step 6 from the previous section.
fBodyAccJerkMag: the frequency for the magnitude for the body linear acceleration Jerk signals obtained in step 6 from the previous section.
fBodyGyroMag: the frequency for the magnitude for the body angular velocity signals obtained in step 6 from the previous section.
fBodyGyroJerkMag: the frequency for the magnitude for the body angular velocity Jerk signals obtained in step 6 from the previous section.

The set of variables that were estimated from these signals and included in this dataset are:

mean: Mean value
std: Standard deviation

Each combination of the signals and variables described above result in one of the variables from
3 to 82 in the list at the end of this section.

The following additional vectors result from step 7 from the previous section. These are used on the angle variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

These result in the variables 83 to 88 in the list at the end of this section.

The values in the dataset for all the above variables are the averages of all the windows for each combination of subject and activity
as obtained in step 8 from the previous section. These values are normalized to a range from -1 to 1. As a consequence of the normalization, there
is no unit associated with the values of these variables.

### List of variables

1. subject.id: each subject is identified by a unique number from 1 to 30.
2. activity.name: the name of the activity that was performed, possible valuea are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING
3. tBodyAcc.mean.X
4. tBodyAcc.mean.Y
5. tBodyAcc.mean.Z
6. tBodyAcc.std.X
7. tBodyAcc.std.Y
8. tBodyAcc.std.Z
9. tGravityAcc.mean.X
10. tGravityAcc.mean.Y
11. tGravityAcc.mean.Z
12. tGravityAcc.std.X
13. tGravityAcc.std.Y
14. tGravityAcc.std.Z
15. tBodyAccJerk.mean.X
16. tBodyAccJerk.mean.Y
17. tBodyAccJerk.mean.Z
18. tBodyAccJerk.std.X
19. tBodyAccJerk.std.Y
20. tBodyAccJerk.std.Z
21. tBodyGyro.mean.X
22. tBodyGyro.mean.Y
23. tBodyGyro.mean.Z
24. tBodyGyro.std.X
25. tBodyGyro.std.Y
26. tBodyGyro.std.Z
27. tBodyGyroJerk.mean.X
28. tBodyGyroJerk.mean.Y
29. tBodyGyroJerk.mean.Z
30. tBodyGyroJerk.std.X
31. tBodyGyroJerk.std.Y
32. tBodyGyroJerk.std.Z
33. tBodyAccMag.mean
34. tBodyAccMag.std
35. tGravityAccMag.mean
36. tGravityAccMag.std
37. tBodyAccJerkMag.mean
38. tBodyAccJerkMag.std
39. tBodyGyroMag.mean
40. tBodyGyroMag.std
41. tBodyGyroMag.mad
42. tBodyGyroJerkMag.mean
43. tBodyGyroJerkMag.std
44. fBodyAcc.mean.X
45. fBodyAcc.mean.Y
46. fBodyAcc.mean.Z
47. fBodyAcc.std.X
48. fBodyAcc.std.Y
49. fBodyAcc.std.Z
50. fBodyAcc.meanFreq.X
51. fBodyAcc.meanFreq.Y
52. fBodyAcc.meanFreq.Z
53. fBodyAccJerk.mean.X
54. fBodyAccJerk.mean.Y
55. fBodyAccJerk.mean.Z
56. fBodyAccJerk.std.X
57. fBodyAccJerk.std.Y
58. fBodyAccJerk.std.Z
59. fBodyAccJerk.meanFreq.X
60. fBodyAccJerk.meanFreq.Y
61. fBodyAccJerk.meanFreq.Z
62. fBodyGyro.mean.X
63. fBodyGyro.mean.Y
64. fBodyGyro.mean.Z
65. fBodyGyro.std.X
66. fBodyGyro.std.Y
67. fBodyGyro.std.Z
68. fBodyGyro.meanFreq.X
69. fBodyGyro.meanFreq.Y
70. fBodyGyro.meanFreq.Z
71. fBodyAccMag.mean
72. fBodyAccMag.std
73. fBodyAccMag.meanFreq
74. fBodyBodyAccJerkMag.mean
75. fBodyBodyAccJerkMag.std
76. fBodyBodyAccJerkMag.meanFreq
77. fBodyBodyGyroMag.mean
78. fBodyBodyGyroMag.std
79. fBodyBodyGyroMag.meanFreq
80. fBodyBodyGyroJerkMag.mean
81. fBodyBodyGyroJerkMag.std
82. fBodyBodyGyroJerkMag.meanFreq
83. angle.tBodyAccMean.gravity
84. angle.tBodyAccJerkMean.gravityMean
85. angle.tBodyGyroMean.gravityMean
86. angle.tBodyGyroJerkMean.gravityMean
87. angle.X.gravityMean
88. angle.Y.gravityMean
