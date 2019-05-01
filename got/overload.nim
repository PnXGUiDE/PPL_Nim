type
    Matrix*[T; nrows, ncols: static[int]] = array[0 .. (nrows * ncols - 1), T]           
  
    # Get the index in the flattened array corresponding 
    # to row r and column c in the matrix
    proc index(mat: Matrix, r, c: int): int =
    result = r * mat.ncols + c

    proc `[]`(mat: Matrix, r, c: int): Matrix.T =
        result = mat[mat.index(r, c)]
      
    proc `[]`(mat: var Matrix, r, c: int): var Matrix.T =
        result = mat[mat.index(r, c)]




  
    # Return the element at r, c
    proc `[]`(mat: Matrix, r, c: int): Matrix.T =
        result = mat[mat.index(r, c)]
  
    # Set the element at r, c
    proc `[]=`(mat: var Matrix, r, c: int, val: Matrix.T) =  
        mat[mat.index(r, c)] = val
  
     # Add a value to every element in the matrix
    proc `+=`(mat: var Matrix, val: Matrix.T) =
        for i in 0 .. mat.high:
           mat[i] += val         
  
    # Add a value to element at r, c
    proc `[]+=`(mat: var Matrix, r, c: int, val: Matrix.T) =  
        mat[mat.index(r, c)] += val
  
  
    # A test case
        var mat: Matrix[float, 3, 4] # matrix with 3 rows and 4 columns
        mat[1, 3] = 7.0
        mat += 1.0
  
    # add 8.0 to entry 1, 3 in matrix
    `[]+=`(mat, 1, 3, 8.0) # works fine