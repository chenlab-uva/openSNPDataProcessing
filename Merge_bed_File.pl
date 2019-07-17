#! /usr/bin/perl
use strict;
use warnings;
#First draft on July 8, 2019, last updated on July 10, 2019 by Dr. Jeff Chen
#Description: This script mege the openSNP datasets of *.bed, *.bim, *.fam files processed produced by  plink. 

    my $dir = '/m/CPHG/KING/xc3m/Good_Make_Bed_File/'; ## Get indiviual *.bed file.
    my $First_File="23andme01";                        ## As first seed file for data merge.
    my $File_Name="23andme";
    my $bed="bed";
    my $bim="bim";
    my $fam="fam";
    my $i=1;
    my $j=$i;
    my $k=$i;
    my $merge01="merge";
    my $merge02="merge";
    my $merge03="merge";
    my $master_file="Master";
    my $missnp="merge-merge.missnp";
    my $missnp02="2ndmissnp_file";
    my $run="comand";

    opendir(DIR, $dir) or die $!;

    while (my $file = readdir(DIR)) {


    	if ($file=~m/bed$/){       

       	$File_Name=$file;
       	$File_Name=~s/bed$//; 				## Get the filename for reformating to get absolutely directory of *.bed, *.bim, and *.fam files.
       	#print "****** $File_Name\n";
      	my $bed=$dir.$File_Name."bed";
       	my $bim =$dir.$File_Name."bim";
       	my $fam=$dir.$File_Name."fam";

       	#print "**** $bed\n";

         $merge01="merge".$j;
         
		if($i==1){

			print "\n******* working on $i ******\n";

                        $run="/home/xc3m/openSNP/plink -bfile $First_File -bmerge $bed $bim $fam -make-bed -out $merge01";
			print "******=====>$run\n\n-------------------------------------------------------------------\n\n";
			system ("$run"); #Run first two files merging.

	  	}else{

			print "\n******* Working on $i of $bed **********\n\n";

			$master_file=$merge01.".bed"; #Merged BIG master *.bed data file.

			#print "****master file ===> $merge01******\n";

                        if(-e $master_file){

				$run="/home/xc3m/openSNP/plink -bfile $merge01 -bmerge $bed $bim $fam -make-bed -out $merge02";
			
				print "******=====>$run\n---------------------------------------------------------------------\n\n";	     		
                        
				system ("$run"); #Run the rest file merging.
			
                           }

	#### Checking whether plink run successfully, this check is data dependent, eventually could put a while or for loop 
        #### to replace the below copy-and-paste block.

	$missnp=$merge01."-merge.missnp"; # For merge-merge.missnp file checking, this was unsuccessful plink run. 
	
	#print "\n?????Founding  $missnp?????\n";

	if(-e $missnp){

		print "\n*******Founding  $missnp *******\n";
		print "\n****master file ===> $merge03******\n";

		### Handling missnp bad files #######

		$missnp02=$merge03."-merge.missnp"; 
		
		# Multiple random *.missnp files may be produced, need to figure out total how many sequential failed runs in the dataset.

		if(-e $missnp02){ # 1 bad file

			$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}
 
		if(-e $missnp02){ # 2 bad file

			$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 3 bad file

			$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 4 bad file

			$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 5 bad file

			$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 6 bad file

			$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 7 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 8 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 9 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 10 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 11 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 12 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 13 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 14 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 15 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 16 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 17 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 18 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 19 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 19 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 20 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 21 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 22 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 23 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 24 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 25 bad file

        		$k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 26 bad file

                        $k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 27 bad file

                        $k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}
	
		if(-e $missnp02){ # 28 bad file

                        $k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 29 bad file

                        $k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}

		if(-e $missnp02){ # 30 bad file

                        $k=$k-1; $merge03="merge".$k; $missnp02=$merge03."-merge.missnp";}


                ## Pick the latest sucessuful run, and merge the new files into it.

		print "******** merge02 ====> $merge02 ********\n";
		print "******** merge03 ====> $merge03 ********\n";

		$run="/home/xc3m/openSNP/plink -bfile $merge03 -bmerge $bed $bim $fam -make-bed -out $merge02";
		print "******=====>$run\n";
	        system ("$run");

		#sleep(5);	

		}

     		}

		$i++; $j=$i-1;$k=$i-2;

                $merge02="merge".$i; $merge03="merge".$k;
     
                # Move the successful run files to Done directory

		system ("mv  $bed /m/CPHG/KING/xc3m/Done_Merge/");
		system ("mv  $bim /m/CPHG/KING/xc3m/Done_Merge/");
		system ("mv  $fam /m/CPHG/KING/xc3m/Done_Merge/");
  		
		} # end of if
     		
		my $stop = <STDIN>;   		

    	} # end of while

    closedir(DIR);

    print "\n**** A total of $i files merged *****\n";
    print "\n******  Completed to make the BIG make-bed file  *****\n";

   exit(0);
