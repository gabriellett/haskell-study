-- Fibonacci naive implementation
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci(n-2) 

-- Gets the first n elements of fibonacci
fibsFirst n = take n fibs

-- Infinite list of fibonacci numbers
-- fibs is the list of [0, 1, <thunk>], so it will only
-- compute the thunk when needed. 
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
