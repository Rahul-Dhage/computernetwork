set ns [new Simulator]

set nf [open hybrid.nam w]
$ns namtrace-all $nf

proc finish {} {
global ns nf
$ns flush-trace
close $nf
exec nam hybrid.nam &
exit 0
}

set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]
set n6 [$ns node]
set n7 [$ns node]
set n8 [$ns node]
set n9 [$ns node]
set n10 [$ns node]
set n11 [$ns node]

$ns duplex-link $n0 $n1 10Mb 10ms DropTail
$ns duplex-link $n0 $n2 10Mb 10ms DropTail
$ns duplex-link $n2 $n3 10Mb 10ms DropTail
$ns duplex-link $n1 $n4 10Mb 15ms DropTail
$ns duplex-link $n4 $n5 10Mb 25ms DropTail
$ns duplex-link $n4 $n6 10Mb 15ms DropTail
$ns duplex-link $n6 $n7 10Mb 2ms DropTail
$ns duplex-link $n7 $n9 10Mb 1ms DropTail
$ns duplex-link $n6 $n8 10Mb 10ms DropTail
$ns duplex-link $n5 $n9 10Mb 25ms DropTail
$ns duplex-link $n9 $n10 10Mb 10ms DropTail
$ns duplex-link $n10 $n11 10Mb 10ms DropTail
$ns duplex-link $n3 $n4 10Mb 5ms DropTail



$ns duplex-link-op $n0 $n1 orient right
$ns duplex-link-op $n0 $n2 orient down
$ns duplex-link-op $n2 $n3 orient right
$ns duplex-link-op $n1 $n4 orient right-down
$ns duplex-link-op $n3 $n4 orient right-up
$ns duplex-link-op $n4 $n5 orient right-up
$ns duplex-link-op $n4 $n6 orient down
$ns duplex-link-op $n6 $n7 orient right-up
$ns duplex-link-op $n6 $n8 orient right-down
$ns duplex-link-op $n5 $n9 orient down
$ns duplex-link-op $n7 $n9 orient right
$ns duplex-link-op $n9 $n10 orient right-down
$ns duplex-link-op $n10 $n11 orient down


$ns at 1.0 "finish"

$ns run

	

