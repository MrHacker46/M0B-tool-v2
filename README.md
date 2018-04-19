# M0B-tool-v2
this is the version 2 of last M0B TOOL
in this tool i will start everything from the start during to some big issues
I'm very sorry to say that but i'm still learning more perl and i'm not free all time

warning : this tool is for educational purpose only !

- M0B tool version 2

_ perl mobv2.pl

_ perl mobv2.pl --help

M0B tool v2 includes now :
- dork scanner [ baidu, bing, livedoor, sogou, oscobo, mywebsearch, teoma, rakuten ]
- sql injection finder
- CMS detect
- IP PORT SCANNER
- Brute force auto detect cms [WORDPRESS - JOOMLA - DRUPAL - MAGENTO - OPENCART]
- Exploit bot [ DRUPAL - ZEN CART - WORDPRESS - JOOMLA - PRESTASHOP - OPENCART ]

To keep livedoor and rakuten (japanese engines) make sure to change proxy every time , if you don't change it
the ip gonna be blacklisted specially if you are not from japan
to change it : go to line 41
- $jpr = "put japanese proxy here";

And now all you need is changing it

## Install
- git clone https://github.com/mobrine-mob/M0B-tool-v2.git

## Requirements
### you need to install LWP::Protocol::socks module , it is necessary to keep some search engines working by using tor proxy 'socks'

just put this commands and all fine


perl -MCPAN -e shell

cpan> install LWP::Protocol::socks

### You need to install tor proxy
- For linux : https://www.youtube.com/watch?v=jqrd9Ba3VOc (tutorial how to install using proxychains)

- For windows : you can easily download Expert Bundle from tor link and run it

link : https://www.torproject.org/download/download

# Remarque
This tool is in test period , so you may find some issues

And if you want some new ads for the tool you can send it as issues or to my email :
mobrinehadye@protonmail.com

# Help : more explaination are included in the tool
 - --m : select search engine you want.
 - --d : dork to scan.
 - --o : Output file to save dork scan results.
 - --sql : scan a list of sites.
 - --scan : scan a list of sites, scan CMS

# WIN32

If you are using this tool from windows make sure to add:
- use Win32::Console::ANSI;

# NEXT GOALS
- ADDING A SHELL FINDER WITH LINK DETECT AND CMS DETECT ( last version included just the cms one so its not precise )

# WARNING
Attacking any site / finding vulnerabilities with this tool is not my responsability
