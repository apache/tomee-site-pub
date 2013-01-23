#!/usr/bin/perl

use strict;
use warnings;

# annotation-example{,s} example{,s} howto sample{,s} sample-application{,s} tutorial{,s}
foreach my $tag (@ARGV) {

$tag =~ s/-/ /g;

my $taguc = "";

foreach my $t (split(" +", $tag)) {
    $taguc .= ucfirst($t) . " ";
}

$taguc =~ s/ +$//;

my $tagname = $tag;
$tagname =~ s/ +/-/g;

$tag =~ s/s$//;


open (F, ">ejb-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: EJB $taguc

Each EJB $tag comes with JUnit unit tests that can be run in
Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system without
special plugins using OpenEJB as an embedded EJB container.  The easiest
way to run a $tag in your IDE is to use maven (*mvn eclipse:eclipse*
or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

open (F, ">ejb3-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: EJB3 $taguc

Each EJB3 $tag comes with JUnit unit tests that can be run in
Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system without
special plugins using OpenEJB as an embedded EJB container.  The easiest
way to run a $tag in your IDE is to use maven (*mvn eclipse:eclipse*
or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

open (F, ">ejb-3-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: EJB 3.0 $taguc

Each EJB 3.0 $tag comes with JUnit unit tests that can be run
Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system without
special plugins using OpenEJB as an embedded EJB container.  The easiest
way to run a $tag in your IDE is to use maven (*mvn eclipse:eclipse*
or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

open (F, ">ejb-31-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: EJB 3.1 $taguc

Each EJB 3.1 $tag comes with JUnit unit tests that can be run
Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system without
special plugins using OpenEJB as an embedded EJB container.  The easiest
way to run a $tag in your IDE is to use maven (*mvn eclipse:eclipse*
or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

}
