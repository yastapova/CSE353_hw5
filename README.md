# CSE353_hw5
Fifth homework assignment in CSE 353: Machine Learning in spring 2015

In this homework assignment, a data file was provided that contained "noisy two-dimensional coordinate observations" by a robot. The goal is to cluster these coordinates in order to identify three possible rooms that the robot has visited. The clustering is done with two different methods in order to compare their results: Gaussian Naive-Bayes and K-Means clustering.

This code was written, tested, and can be run in Matlab. When running the code, kmeans.m should be run after em.m because it makes use of variables saved in the workspace after em.m is finished running.

* pgm_hw4.pdf     - Homework assignment and directions
* robloc.dat      - Provided data file
* hw5_report.pdf  - Written report of results
* em.m            - Run Gaussian Naive-Bayes method of clustering
* kmeans.m        - Run K-Means method of clustering
* fcondjoin.m     - Function to find the conditional probability of two x
