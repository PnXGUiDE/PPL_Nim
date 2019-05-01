proc main() =
    var test = "Hello World"
    echo test[6 .. ^1]
    # this is transformed by the compiler to this expression
    echo test[6 .. (len(test)-1)]
    # 1 here can be any symbol and any expression
    echo test[6 .. ^(test.len-test.high)]
    # and test can also be any symbol. It's a simple rewrite rule.
    echo test[5 .. test.len]
  
  
main()