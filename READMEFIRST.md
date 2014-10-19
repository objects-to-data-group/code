# Read me first!

This document details the steps needed to work with our scripts.

## Step One:

First you need to download the master-code branch from GitHub.com and unzip its contents to your Download folder (Mac OSX). You can find the master-code brach at https://github.com/objects-to-data-group/code

In the code-master directory you will find `nytimesdata.sh` and you will need to run this script to get started. The details on how to run `nytimesdata.sh` are shown below:

## How to run `nytimesdata.sh`
* open Terminal and point the path towards the directory that contains the script (standard, type: "cd Downloads/code-master") ;
  * Tip: you can also open Terminal, type `cd` followed by whitespace, drag the folder that contains the script into the terminal window and hit the `Enter` key.
* In Terminal type `chmod +x *` and hit the `Enter` key;
* In Terminal type `./nytimesdata.sh` and hit the `Enter` key;
* the script will run and do it's thing.

## Expected results from running the `nytimesdata.sh` script

After you have run `nytimesdata.sh` you should have a directory on your desktop named "newyorktimesdatasets". In this directory you will find different files and filetypes that will be used to reproduce our results. 

### Overview of the filetypes and -names in the newyorktimesdatasets directory 

If everything went according to plan you should end up with the following files:

* nytimes_humanities_flat.json (obtained from http://cleverdon.hum.uva.nl/marijn/OtD/nytimes/)
* nytimes_humanities_pretty.json (obtained from http://cleverdon.hum.uva.nl/marijn/OtD/nytimes/)
* nytimes_humanities_tabbed.csv (obtained from http://cleverdon.hum.uva.nl/marijn/OtD/nytimes/)
* A directory named OtD (obtained from http://cleverdon.hum.uva.nl/marijn/OtD/nytimes/)
* Science.json (obtained from https://dl.dropboxusercontent.com/u/34142124/)
* Script1.sh to Script9.sh (copied from the code-master directory located in the Downloads directory)
* Objects_to_Data_Our_Findings.PDF

## Step Two:

In order to proceed and verify our findings it is strongly suggested to read Objects_to_Data_Our_Findings.pdf. Objects_to_Data_Our_Findings.pdf is (if everything went as planned) available in the newyortimesdata directory that is located on your desktop.

Objects_to_Data_Our_Findings.pdf describes our main research question, the methodology and the results. In order to reproduce our results you can run the various scripts that we have made. These scripts are named Script1.sh, Script2.sh, Script3.sh, Script4.sh, Script5.sh, Script6.sh, Script7.sh, Script8.sh and Script9.sh. All of these scripts are different steps that will produce the results that are needed to output the different bar- and line graphs.

In addition, on our Github groups page https://github.com/objects-to-data-group/ you can also find the "old-unused-scrips" repository that holds all of the scripts and files that where also created but discarded before the end result. 
