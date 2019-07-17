#! /usr/bin/perl
use strict;
use warnings;

#First drafted up on July 8, 2019, last updated by Dr. Jeff Chen on July 16, 2019.
#Description: Remove the zero size of empty files in the plink binary file directory.

    my $dir = '/m/CPHG/KING/xc3m/23andme_Run/';  	## The original plink binary files location
    my $i=0;						## Count zero sized file number

    opendir(DIR, $dir) or die $!;

    while (my $file = readdir(DIR)) {

        my $file_size= -s "$dir/$file";  		# Get the file size

               print "*** $file  ===> $file_size\n";

               if($file_size == 0){			# Check the file size

               		print "*** $file  ===> $file_size\n"; 
       	
       		#my $stop = <STDIN>; 			## Code checking and debugging

		system ("mv $dir/$file /m/CPHG/KING/xc3m/23andme_ZeroSizeFile/"); 
							
							## Remove the zero size files to new location
    		$i++;					## Zero sized file number 

		}
		
		#$i++; 					## Total file number
 	}

    closedir(DIR);


   print "\n****** Completed to Move $i Zero Size Files  *****\n";

   exit(0);
