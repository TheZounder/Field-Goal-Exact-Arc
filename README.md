You coul also pre-allocate the arrays to make it run faster but this is such a small problem that you don't need to.

You would do so by creating an array of 1s or 0s using ones(1,9) or zeroes(1,9) and *probably* the changem() function in the loop so it will replace 
the one or the zero in every loop with the actual needed value. 

I did not do that because it is unecessary extra work. Might update it later though if I use this code for somethign else
