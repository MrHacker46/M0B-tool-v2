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
$jpr = "61.195.108.103:8080";
$aj = LWP::UserAgent->new();
$aj->agent("$us1");
$aj->proxy([qw/ http https /] => "http://$jpr"); # japanese proxy
$aj->cookie_jar({});
##################################### for exploit ####################################################
my $ua = LWP::UserAgent->new;
$ua->timeout(10);
##################################### auto add folders
$result="result";
    if (-e $result) 
    {
    }
    else
    {
        mkdir $result or die "Error creating directory: $result";
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
     system('M0B scan tool v1');
	 }
     print colored("$oni\n",'blue');
     print " \n\n      M0B scan tool v1";
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
	print "---------------------------------------------------------------------------\n";
	exit();
}
sub main{
     system('cls');
if ( @uname =~ Linux ) {    #for linux os
	 system("clear");
     system('M0B scan tool v1');
	 }
     print colored("$oni\n",'blue');
     print " \n\n      M0B scan tool v1";
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
