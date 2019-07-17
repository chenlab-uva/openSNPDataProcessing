#! /usr/bin/perl
use strict;
use warnings;

#First drafted on July 2, 2019 by Dr. Jeff Chen
#Last updated on July 16, 2019 by Dr. Jeff Chen
#This script is to convert 23andme SNP genotype files to *.bed, *.bim, *.fam file formats via plink.

     my $dir="/m/CPHG/KING/xc3m/23andme_file"; ## Directory where 23andme txt files are located.

     opendir(DIR, $dir) or die $!;

    	while (my $file = readdir(DIR)) {

        # A file test to check that it is a directory
	# Use -f to test for a file
       	#next unless (-d "$dir/$file");

	print "$file\n";			 ## Get the file to see.
    
		if ($file=~m/23andme/){

			print "$file\n"; 	## Only pick up 23andme files

		 	system("cp /m/CPHG/KING/xc3m/openSNP/$file /m/CPHG/KING/xc3m/23andme_Run/."); ## Move files to working directory

		 	system("/h4/t1/apps/statgen/bin/plink1.9  --23file $file $file -out $file");  ## Call plink 1.9 version to convert the files to binary fomart

	}
       
      #my $stop = <STDIN>; ## For error checking, and code and data QC purpose
    
 }

    closedir(DIR);

   print "\n****** Completed to Convert All 23andme SNP Genonotype Files to KING and PLINK readable Binary Format  *****\n";

   exit(0);
