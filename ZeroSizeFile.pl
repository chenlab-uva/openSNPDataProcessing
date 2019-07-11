#! /usr/bin/perl
use strict;
use warnings;

#First drafted up on July 8, 2019, last updated by Dr. Jeff Chen on July 8, 2019.
#Description: Remove the zero size of enpty files of the plink binary file directory.

    my $dir = '/m/CPHG/KING/xc3m/23andme_Run/';  	# The original plink binary files location

    opendir(DIR, $dir) or die $!;

    while (my $file = readdir(DIR)) {

        my $file_size= -s "$dir/$file";  		# Get the file size

               #print "*** $file  ===> $file_size\n";

               if($file_size == 0){			# Check the file size

               		print "*** $file  ===> $file_size\n"; 
			#print "$file/n";
       	
       		#my $stop = <STDIN>; # Code checking and debugging

		system("mv $dir/$file /m/CPHG/KING/xc3m/23andme_ZeroSizeFile/"); # remove the zero size files to new location
    		
		}
 	}

    closedir(DIR);


   print "\n****** Completed to Move Zero Size Files  *****\n";

   exit(0);
