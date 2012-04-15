load RSLatch.hdl,
output-file RSLatch.out,
output-list time%S1.4.1 s-%B2.1.2 r-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Important: the latch must be initialized set or reset 
set s- 1,
set r- 0,
repeat 10 { tick, tock; }

// Hold
set s- 1,	
set r- 1,
repeat 4 { tick, output; tock, output; }

// Set
set s- 0,
repeat 4 { tick, output; tock, output; }

output-list time%S1.4.1 s-%B2.1.2 r-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Hold
set s- 1,
repeat 4 { tick, output; tock, output; }

// Reset
set r- 0,
repeat 4 { tick, output; tock, output; }

output-list time%S1.4.1 s-%B2.1.2 r-%B2.1.2 q%B2.1.2 q-%B2.1.2;

// Hold
set r- 1,
repeat 4 { tick, output; tock, output; }

// Set
set s- 0,
repeat 2 { tick, output; tock, output; }

// Set and Reset -- illegal
set r- 0,
repeat 4 { tick, output; tock, output; }

// Hold, but simulated circuit oscillates
set s- 1,
set r- 1,

repeat 4 { tick, output; tock, output; }
output-list time%S1.4.1 s-%B2.1.2 r-%B2.1.2 q%B2.1.2 q-%B2.1.2;

