#!/usr/bin/perl

use strict;
use warnings;

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


open (F, ">javaee-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: JavaEE $taguc

Each JavaEE $tag comes with JUnit unit tests that can be run
in Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system
without special plugins using Apache TomEE as an embedded JavaEE container.  The
easiest way to run a JavaEE $tag in your IDE is to use maven
(*mvn eclipse:eclipse* or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

open (F, ">javaee6-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: JavaEE6 $taguc

Each JavaEE6 $tag comes with JUnit unit tests that can be run
in Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system
without special plugins using Apache TomEE as an embedded JavaEE container.  The
easiest way to run a JavaEE $tag in your IDE is to use maven
(*mvn eclipse:eclipse* or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

open (F, ">javaee-6-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: JavaEE 6 $taguc

Each JavaEE 6 $tag comes with JUnit unit tests that can be run
in Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system
without special plugins using Apache TomEE as an embedded JavaEE container.  The
easiest way to run a JavaEE $tag in your IDE is to use maven
(*mvn eclipse:eclipse* or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

open (F, ">java-ee-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: Java EE $taguc

Each Java EE $tag comes with JUnit unit tests that can be run
in Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system
without special plugins using Apache TomEE as an embedded JavaEE container.  The
easiest way to run a Java EE $tag in your IDE is to use maven
(*mvn eclipse:eclipse* or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

open (F, ">java-ee-6-$tagname.mdtext") or die "Can't write to file $!";
print F <<EOF;
Title: Java EE 6 $taguc

Each Java EE 6 $tag comes with JUnit unit tests that can be run
in Eclipse, IntelliJ, NetBeans, Maven, Ant or any IDE or build system
without special plugins using Apache TomEE as an embedded JavaEE container.  The
easiest way to run a Java EE 6 $tag in your IDE is to use maven
(*mvn eclipse:eclipse* or *mvn idea:idea*) to generate project descriptors.

{include:examples-trunk/index.md}
EOF
close F;

}
