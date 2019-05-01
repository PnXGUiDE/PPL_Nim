proc main() =
    var test = "Hello World"
    echo test[6 .. ^1]
    # this is transformed by the compiler to this expression
    echo test[6 .. (len(test)-1)]
    # 1 here can be any symbol and any expression
    echo test[6 .. ^(test.len-test.high)]
 
  
main()