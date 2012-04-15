load DFFn.hdl,
output-file DFFn.out,

// Important: the latch must be initialized set or reset 
set d 0,
set ck 1,
repeat 5 { tick, tock; }
set ck 0,
repeat 5 { tick, tock; }


output-list time%S1.4.1 d%B2.1.2 ck%B2.1.2 s1-%B2.1.2 r1-%B2.1.2
    q1%B2.1.2 q1-%B2.1.2 ck-%B2.1.2 s2-%B2.1.2 r2-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Hold master FF -- d ignored
set ck 0,
set d 1,	
repeat 4 { tick, output; tock, output; }

set d 0,	
repeat 4 { tick, output; tock, output; }


output-list time%S1.4.1 d%B2.1.2 ck%B2.1.2 s1-%B2.1.2 r1-%B2.1.2
    q1%B2.1.2 q1-%B2.1.2 ck-%B2.1.2 s2-%B2.1.2 r2-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Set master FF -- clk before d
set ck 1,
repeat 2 { tick, output; tock, output; }
set d 1,
repeat 4 { tick, output; tock, output; }

// Transfer to slave FF
set ck 0,
repeat 5 { tick, output; tock, output; }


output-list time%S1.4.1 d%B2.1.2 ck%B2.1.2 s1-%B2.1.2 r1-%B2.1.2
    q1%B2.1.2 q1-%B2.1.2 ck-%B2.1.2 s2-%B2.1.2 r2-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Reset master FF -- d before clk
set d 0,
repeat 2 { tick, output; tock, output; }
set ck 1,
repeat 4 { tick, output; tock, output; }

// Transfer to slave FF
set ck 0,
repeat 5 { tick, output; tock, output; }

output-list time%S1.4.1 d%B2.1.2 ck%B2.1.2 s1-%B2.1.2 r1-%B2.1.2
    q1%B2.1.2 q1-%B2.1.2 ck-%B2.1.2 s2-%B2.1.2 r2-%B2.1.2 q%B2.1.2 q-%B2.1.2;

