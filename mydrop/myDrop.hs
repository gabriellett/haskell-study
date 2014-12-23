-- Function myDrop recieves n and 'x'es
myDrop n xs = 	if n <= 0 || null xs -- If number to drop is <=0 or null
		then xs -- returns xs
		else myDrop (n - 1) (tail xs) -- else call recursivelly myDrop passing n-1 and the tail of 'x'es list

-- This function could be defined like this:
--
-- myDropX n xs = if n <= 0 || null xs then xs else myDropX (n - 1) (tail xs)
--
-- but it lacks readabillity
