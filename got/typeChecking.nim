import typetraits

type
    Person = tuple[name: string, age: int]
    Obj = object of RootObj
        name*: string   # the * means that `name` is accessible from other modules
        age: int        # no * means that the field is hidden


const u = [1,2,3,4,5]
const v = nil
var w = true
var x = 12
let y = "Hello Worild!"
let z = 'M'


echo "type of  u is  ", u.type.name
echo "type of  v is  ", v.type.name
echo "type of  w is  ", w.type.name
echo "type of  s is  ", x.type.name
echo "type of  y is  ", y.type.name
echo "type of  z is  ", z.type.name

echo " ------------ "

echo "type of person is ", Person.type
echo "type of person of name is ", Person.type.name
echo "type of Obj of age is ", Obj.type.age

