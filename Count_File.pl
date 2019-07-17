#! /usr/bin/perl
use strict;
use warnings;

#First drafted on July 3, 2019, last updated by Dr. Jeff Chen on July 3, 2019.
#Decsription: Checking what type of files and which organizations provided the data.
#The  manually sort the data files by file types and company names.

    my $dir = '/m/CPHG/KING/xc3m/openSNP';

    opendir(DIR, $dir) or die $!;

    while (my $file = readdir(DIR)) {

	if  ( $file !~m/23andme/ &&  $file !~m/ancestry/ && $file !~m/ftdna-illumina/){

	if ($file ne "." || $file ne ".."){

            	print "$file\n";

		}	
        }
       
       #my $stop = <STDIN>;
    
 	}

    closedir(DIR);


   print "\n****** Completed  *****\n";

   exit(0);
