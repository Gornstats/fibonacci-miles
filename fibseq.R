# Iterative fibonacci function
# Generates sequence of fibonacci numbers 'x' units long
fibseq = function(x){
  if(x>50) print("Sequence too large. Use smaller integer")
  else if(x<3) print("Input too small. Use integer larger than 3")
  else {
    fib = c(1,1)
    #next number in sequence is sum of previous two
    for(i in seq(x-2)) fib = append(fib,sum(tail(fib,n=2)))
    return(fib)
  }
}

# benchmark(fibseq(20),fibseq(40),fibseq(50))
