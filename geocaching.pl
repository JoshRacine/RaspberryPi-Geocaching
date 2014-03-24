#!/usr/bin/env perl

#my $bearing;
#my $curLat;
#my $curLon;	
my $gpspipe;
my $pi =  3.141592653589793238462643383;
#=========================================================#
#============== Geocache "Database" Start ================#
#=========================================================#
my $cache1lat = 42.24663;  # The (Eastern) Eagle has landed... AGAIN!
my $cache1lon = -83.62247; # The (Eastern) Eagle has landed... Again!

my $cache2lat = 42.24786;  # Cache-on-Campus EMU #2
my $cache2lon = -83.62547; # Cache-on-Campus EMU #2

my $cache3lat = 42.24946;  # Cache-on-Campus EMU #3
my $cache3lon = -83.62696; # Cache-on-Campus EMU #3

my $cache4lat = 42.25100;  # Cache-on-Campus EMU #4
my $cache4lon = -83.62621; # Cache-on-Campus EMU #4

#my $cache5lat = ;
#my $cache5lon = ;

#========================================================#
#============== Geocache "Database" End =================#
#========================================================#

sub distance {
        my ($lat1, $lon1, $lat2, $lon2, $unit) = @_;
        my $theta = $lon1 - $lon2;
        my $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) + cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));

        $dist  = acos($dist);
        $dist = rad2deg($dist);
        $dist = $dist * 60 * 1.1515;
        if ($unit eq "K") {
                $dist = $dist * 1.609344;
        }
        elsif ($unit eq "N") {
                $dist = $dist * 0.8684;
        }
        elsif ($unit eq "ME") {
                $dist = $dist * 1.609344;
                $dist = $dist * 1000;
        }
        return ($dist);
}

#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::  This function get the arccos function using arctan function   :::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
sub acos {
        my ($rad) = @_;
        my $ret = atan2(sqrt(1 - $rad**2), $rad);
        return $ret;
}

#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::  This function converts decimal degrees to radians             :::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
sub deg2rad {
        my ($deg) = @_;
        return ($deg * $pi / 180);
}

#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
#:::  This function converts radians to decimal degrees             :::
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
sub rad2deg {
        my ($rad) = @_;
        return ($rad * 180 / $pi);
}

#====================================================================#

while (){
	$gpspipe = `gpspipe -w -n 8`;
	$gpspipe =~ m/"lat":(.+?),"lon":(.+?),/;
	my $curLat = $1;
	my $curLon = $2;
	#print $curLat . "\n";
	#print $curLon . "\n";
#	for($i=0; $i <= 3; $i++){
#		chop $curLat;
#		chop $curLon;
#	}
	if(distance($curLat, $curLon, $cache1lat, $cache1lon, "ME") < 1000){
		print distance($curLat, $curLon, $cache1lat, $cache1lon, "ME") . " - Meters to nearest geocache.\n";
		#print bearing($curLat, $curLon, $cache1lat, $cache1lon) . "\n";
	}
	else{
		print distance($curLat, $curLon, $cache1lat, $cache1lon, "K") . " - Kilometers to nearest geocache.\n";
		#print bearing($curLat, $curLon, $cache1lat, $cache1lon) . "\n";
	} 
}

exit;


#============================================================================#
#============================= To-Do for SummerCamp =========================#
#============================================================================#
# Stream line data flow                                                      #
# Bearing to cache                                                           #
# Format output to 2 decimal points                                          #
# Nearest Cache and remove old location after within 4 meters for 30s        #
# Pipe output to LCD                                                         #
#----------------------------------------------------------------------------#
#=============================== To-Do for me ===============================#
# Geocaching.com API --- Pull caches                                         #
# Location based compas							     #
#============================================================================#
