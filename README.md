# The New York Times Data Script

This script will perform different actions needed to accomplish it's goal. (wow, that's vague...)

## How to run `nytimesdata.sh`
* download the script;
* place it in a convenient location on your computer;
* open Terminal and point the path towards the directory that contains the script;
  * Tip: you can open Terminal, type `cd` followed by whitespace, drag the folder that contains the script into the terminal window and hit the `Enter` key.
* type `chmod +x nytimesdata.sh` and hit the `Enter` key;
* type `./nytimesdata.sh` and hit the `Enter` key;
* the script will run and do it's thing.

### Issues
* Several issues that need addressing;
  * script exits when the directory exists;
  * no if statements;
  * no getopts;
  * many others...
* Because of these problems somewhere in the world [a kitten dies](http://www.simonlovell.co.uk/wp-content/uploads/2013/02/save-kitten.jpg).

# About the Sub-scripts

Partial scripts (`script1.sh` and `script2.sh`) that tackle sub-questions of our research.

View `required-scrips.md` in this repository to see an oversight of the sub-questions that have, thus far, been established.

## How to run `script1.sh` and `script2.sh`
* place the scripts (`script1.sh` and `script2.sh`) in the directory that's created by `nytimesdata.sh`;
  * (The directory is named `newyorktimesdatasets` and should be located on your Desktop.)
* open Terminal and point the path towards the directory that contains the scripts (User/Desktop/newyorktimesdatasets);
* type `chmod +x script1.sh` or `chmod +x script2.sh` and hit the `Enter` key;
* type `./script1.sh` or `./script2.sh` and hit the `Enter` key;
* the script you choose will run and do it's thing.

## Script 1

This script draws information from the NY-Times article-search API. 

* It defines the total number of news-items kept within the dataset that is attached to the API. 

* It defines the total number of front-page articles kept within the dataset that is attached to the API. 

* It defines the total number of 2000's news-items kept within the dataset that is attached to the API. 

* It defines the total number of 2000's front-page articles kept within the dataset that is attached to the API. 

* It prints the results into the command-line interface. 

### Developments needed: 

Instead of the total number of ALL news-items it should rule out blogs, since those form a very specific type of news-item that only came into excistence over the last few decades. They do not form part of the actual newspaper. Or do they? Somebody willing to find out?

Can someone figure out a way to show the results for each decade automatically?

## Preliminary findings due to Script 1:

While introducing our research question during the class on Wednessday the 24th of September, doubts where raised by fellow students whether the explanation to our research question could not simply be found in a change of labeling the articles. In other words, could it be that after the 1990's the 'Front Page' simple ceased to excist as a possible 'type of material' within the databse. Together with Marijn we thus searched for ways in which we could request information about the total-number of Front Page articles from the API. Via the console this did not seem possible. However, after a lot of mangling and many trial-and-errors the group managed to form a script that was able to draw the required information directly from the API. Unfortunately the script seems to confirm the suspicions raised during the class session. 

The results from the script are as follows:

* Total news-items in database: 14767872  
* Total front-page articles in database: 795315  
* Total news-items in database within the 1850's: 152761  
* Total front-page articles in database within the 1850's: 34141  
* Total news-items in database from the 1990's until 2013: 2517342  
* Total front-page articles in database from the 1990's until 2013: 0

This seems to confirm the fact that the label of 'Front-Page' ceased to excist in the 'Type of material' field. Future research will have to point out whether it changed to another label and/or field. Once that is done, we can look at the renewed number of Humanities front page articles and find out if (possibly percentage-wise) the development still shows possibly interesting hick-ups. If not, we may need to look for another research question. 


## Script 2

This script creates 2 textfiles: 

The first textfile encapsulates the total number of news-items within the pre-defined NY-Times dataset that have "The New York Times" listed as a source. It counts these articles per decade. 

The second textfile encapsulates the total number of front-page articles within the pre-defined NY-Times dataset that have "The New York Times" listed as a source. It should be noted that all front-page articles within the pre-defined dataset have "The New York Times" listed as a source, so no specific filter is applied for this. It counts the articles per decade. 

An `echo-line prints` an explanation-line to lable the retrieved data. 

The results are printed beneath the explanation-line by pasting the two previously created text-files. 

### Developments needed:

Instead of the total number of ALL news-items it should rule out blogs, since those form a very specific type of news-item that only came into excistence over the last few decades. They do not form part of the actual newspaper. Or do they? Somebody willing to find out?

## Authors
* S. Bergmans
* J. Lam
* W. Nanninga
* C. Sleutel
* S. Wisselink
