load RSFF.hdl,
output-file RSFF.out,

// Important: the latch must be initialized set or reset 
set s 0,
set r 1,
set ck 1,
repeat 5 { tick, tock; }
set r 0,
set ck 0,
repeat 5 { tick, tock; }

output-list time%S1.4.1 s%B2.1.2 r%B2.1.2 ck%B2.1.2 s1-%B2.1.2 r1-%B2.1.2
    q1%B2.1.2 q1-%B2.1.2 ck-%B2.1.2 s2-%B2.1.2 r2-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Hold
set ck 0,
set s 0,	
set r 0,

tick, output; tock, output;

// set pulse while clock high
set ck 1,
repeat 2 { tick, output; tock, output; }
set s 1,
repeat 4 { tick, output; tock, output; }
set s 0,
tick, output; tock, output;
set ck 0,
repeat 5 { tick, output; tock, output; }

output-list time%S1.4.1 s%B2.1.2 r%B2.1.2 ck%B2.1.2 s1-%B2.1.2 r1-%B2.1.2
    q1%B2.1.2 q1-%B2.1.2 ck-%B2.1.2 s2-%B2.1.2 r2-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// clock pulse while reset high
set r 1,
repeat 2 { tick, output; tock, output; }
set ck 1,
repeat 4 { tick, output; tock, output; }
set ck 0,
tick, output; tock, output;
set r 0,
repeat 5 { tick, output; tock, output; }

output-list time%S1.4.1 s%B2.1.2 r%B2.1.2 ck%B2.1.2 s1-%B2.1.2 r1-%B2.1.2
    q1%B2.1.2 q1-%B2.1.2 ck-%B2.1.2 s2-%B2.1.2 r2-%B2.1.2 q%B2.1.2 q-%B2.1.2;


