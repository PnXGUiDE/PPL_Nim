type
  Person = tuple[name: string, age: int] # type representing a person:
                                         # a person consists of a name
                                         # and an age
var
  person: Person
person = (name: "Peter", age: 30)
# the same, but less readable:
person = ("Peter", 30)

echo person
echo person.name
echo person.age



proc echoUnaryTuple(a: (int,int,char,string,float,)) =
    echo a[0]
    echo a[1]
    echo a[2]
    echo a[3]
    echo a[4]
  
echoUnaryTuple (1,2,'M',"Hello <->",4.55)