proc echoUnaryTuple(a: (int,int,char,string,float,)) =
    echo a[0]
    echo a[1]
    echo a[2]
    echo a[3]
    echo a[4]
  
echoUnaryTuple (1,2,'M',"Hello <->",4.55)