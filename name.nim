#[
    Identifiers in Nim can be any string of letters, 
    digits and underscores, 
    beginning with a letter. Two immediate following 
    underscores __ are not allowed:
        
    letter ::= 'A'..'Z' | 'a'..'z' | '\x80'..'\xff'
    digit ::= '0'..'9'
    IDENTIFIER ::= letter ( ['_'] (letter | digit) )*
]#
let name: int = 5
# let _name: int = 6 # Name should beginning with a letter
let name_ok: int = 8
# let na__me: int = 7 # Two immediate following underscores __ are not allowed
let Name: int = 6
# let naMe: int = 9 # Error

echo Name,"\n",name