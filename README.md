# CSE353_hw5
Fifth homework assignment in CSE 353: Machine Learning in spring 2015

In this homework assignment, a data file was provided that contained "noisy two-dimensional coordinate observations" by a robot. The goal is to cluster these coordinates in order to identify three possible rooms that the robot has visited. The clustering is done with two different methods in order to compare their results: Gaussian Naive-Bayes and K-Means clustering.

This code was written, tested, and can be run in Matlab. When running the code, kmeans.m should be run after em.m because it makes use of variables saved in the workspace after em.m is finished running.

* <i>pgm_hw4.pdf</i>     - Homework assignment and directions
* <i>robloc.dat</i>      - Provided data file
* <i>hw5_report.pdf</i>  - Written report of results
* <i>em.m</i>            - Run Gaussian Naive-Bayes method of clustering
* <i>kmeans.m</i>        - Run K-Means method of clustering
* <i>fcondjoin.m</i>     - Function to find the conditional probability of two x values

There was also an extra credit portion in the assignment to classify emails into spam and ham (based on the provided data files: <i>spambase_train.dat</i> and <i>spambase_test.dat</i>). This is currently not completed, but I may do it in the future.
