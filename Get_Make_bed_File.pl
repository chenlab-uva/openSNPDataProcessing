#! /usr/bin/perl
use strict;
use warnings;

#First drafted up on July 8, 2019, last updated on July 8, 2019 by Dr. Jeff Chen
#Description: to get all 23andme SNP genotype files with all the successful conversion to prdocuce
# *.bed, *.bim, and *.fam files


    my $dir = '/m/CPHG/KING/xc3m/23andme_Run/'; # Where the binary files located, this is the data source directory
   
    opendir(DIR, $dir) or die $!;

    while (my $file = readdir(DIR)) {

if ($file=~m/txt$/){     # Get the file name
       
       my $bed=$dir.$file.".bed";  # Make the *.bed file name with absolute directory path
       my $bim =$dir.$file.".bim"; # Make the *.bim file name with the absolute dirctory path
       my $fam=$dir.$file.".fam";  # Make the *.fam file name with the absolute directory path

       # print "$file\n";          # Check the codes, the file and path to be correct

if (-e $bed && -e $bim && -e $fam){ # Only pick up data with all three files of *.bed, *.bim, and *.fam

	# Code checking with correctness

       	print "$file\n";
        print "$bed\n";
        print "$bim\n";
        print "$fam\n";
	
	# Move selected files to new location for processing

	system ("mv $bed /m/CPHG/KING/xc3m/Good_Make_Bed_File/");
	system ("mv $bim /m/CPHG/KING/xc3m/Good_Make_Bed_File/");
	system ("mv $fam /m/CPHG/KING/xc3m/Good_Make_Bed_File/");

}


}       

       	#my $stop = <STDIN>;  # Code checking ........

 	}

    closedir(DIR);

   print "\n******  Completed to Check make-bed file intergratity   *****\n";

   exit(0);
