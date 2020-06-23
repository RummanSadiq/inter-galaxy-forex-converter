# Inter-Galaxy Forex Converter

## Problem Statement

Due to COVID 19 Pandemic, you decided to give up on earth and relocate to Moon with the leftover money in your bank. The first business that you planned on the moon is to export moon rocks to the earth.


Exporting these rocks requires you to convert forex so you decided to write an inter-galaxy forex converter.


The currency used on the moon is similar to roman numerals and you have collected the appropriate translation between them.


Roman numerals are based on seven symbols

Symbol    I     V     X     L     C     D     M

Value 	  1     5     10    50   100   500   1000


Numbers are formed by combining symbols together and adding the values. For example, MMVI is 1000 + 1000 + 5 + 1 = 2006. Generally, symbols are placed in order of value, starting with the largest values. When smaller values precede larger values, the smaller values are subtracted from the larger values, and the result is added to the total. For example MCMXLIV = 1000 + (1000 - 100) + (50 - 10) + (5 - 1) = 1944.


The symbols "I", "X", "C", and "M" can be repeated three times in succession, but no more. (They may appear four times if the third and fourth are separated by a smaller value, such as XXXIX.) "D", "L", and "V" can never be repeated.

"I" can be subtracted from "V" and "X" only. "X" can be subtracted from "L" and "C" only. "C" can be subtracted from "D" and "M" only. "V", "L", and "D" can never be subtracted.

Only one small-value symbol may be subtracted from any large-value symbol.

Input to your program consists of lines of text detailing your notes on the conversion between intergalactic units and roman numerals.

You are expected to handle invalid queries appropriately.



## Test input:

rupa is I
dola is V
eura is X
dina is L
rupa rupa Silver is 34 Credits
rupa dola Gold is 57800 Credits
eura eura Iron is 3910 Credits
how much is eura dina rupa rupa ?
How many Credits is rupa dola Silver ?
How many Credits is rupa dola Gold ?
How many Credits is rupa dola Iron ?
How much wood could a butter chuck if a badluck could chuck luck ?


## Test Output:

eura dina rupa rupa is 42
rupa dola Silver is 68 Credits
rupa dola Gold is 57800 Credits
rupa dola Iron is 782 Credits
I have no idea what you are talking about
