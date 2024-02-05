#! /usr/bin/env bash

case $1 in
  "docker")
    docker pull bkimminich/juice-shop
    docker pull cyrivs89/web-dvws
  ;;
  "juice-shop")
    exec docker run --rm -p 9000:9000 bkimminich/juice-shop
  ;;
  "dvws")
    exec docker run --rm -it -p 9010:9010 cyrivs89/web-dvws
  ;;
  "juice-home")
    exec open -a Safari "https://cybr.com/beginner-archives/set-up-the-owasp-juice-shop-on-kali-with-docker-quickest-method/"
  ;;
  "injection-course")
    exec open -a Safari "https://cybr.com/courses/injection-attacks-the-free-guide/"
  ;;
  "dvws-walkthrough")
    exec open -a Safari "https://www.axcelsec.com/2018/05/damn-vulnerable-web-services-walkthrough.html"
  ;;
  "owsap-testing-guide")
    exec open -a Safari "https://owasp.org/www-project-web-security-testing-guide/stable/"
  ;;
  "sans-top-25")
    exec open -a Safari "https://www.sans.org/top25-software-errors/"
  ;;
  "owsap-top-ten")
    exec open -a Safari "https://owasp.org/www-project-top-ten/"
  ;;
  "NIST-CyberSecurity")
    exec open -a Safafri "https://www.nist.gov/itl/smallbusinesscyber/nist-cybersecurity-framework-0"
  ;;
  *)
    echo <<DOC
resources - resources for training

docker      = pull docker images for training
juice-shop  = launch juice shop on port 9000
dvws        = launch dvws on port 9010

juice-home            = open juice home page
injection-course      = open injection course page
dvws-walkthrough      = open the dvws walkthrough
owsap-testing-guide   = open the owsap-testing-guide
sans-top-25           = open the owsap top 25 vulnerabilities
owsap-top-ten         = open the owsap top ten vulnerabilities
NIST-CyberSecurity    = open the NIST CyberSecurity FrameWork

DOC
  ;;
esac

