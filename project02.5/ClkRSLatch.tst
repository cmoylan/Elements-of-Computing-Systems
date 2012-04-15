load ClkRSLatch.hdl,
output-file ClkRSLatch.out,

// Important: the latch must be initialized set or reset 
set s 0,
set r 1,
set ck 1,
repeat 5 { tick, tock; }
set ck 0,
repeat 5 { tick, tock; }

output-list time%S1.4.1 s%B2.1.2 r%B2.1.2 ck%B2.1.2 s-%B2.1.2 r-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Hold
set ck 0,
set s 0,	
set r 0,
repeat 4 { tick, output; tock, output; }

// Ignore s
set s 1,	
repeat 2 { tick, output; tock, output; }

// Ignore s+r
set r 1,	
repeat 2 { tick, output; tock, output; }

// Ignore r
set s 0,
set r 1,	
repeat 2 { tick, output; tock, output; }

set r 0,	
repeat 2 { tick, output; tock, output; }

output-list time%S1.4.1 s%B2.1.2 r%B2.1.2 ck%B2.1.2 s-%B2.1.2 r-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Set
set ck 1,
repeat 2 { tick, output; tock, output; }
set s 1,
repeat 4 { tick, output; tock, output; }

// Hold
set s 0,
repeat 4 { tick, output; tock, output; }

output-list time%S1.4.1 s%B2.1.2 r%B2.1.2 ck%B2.1.2 s-%B2.1.2 r-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Reset
set r 1,
repeat 4 { tick, output; tock, output; }

// Hold
set ck 0,
repeat 2 { tick, output; tock, output; }
set r 0,
repeat 2 { tick, output; tock, output; }
set s 1,
repeat 4 { tick, output; tock, output; }

output-list time%S1.4.1 s%B2.1.2 r%B2.1.2 ck%B2.1.2 s-%B2.1.2 r-%B2.1.2 q%B2.1.2 q-%B2.1.2;

