function isNonzeroDeterminant = checkNonzeroDeterminant(matrix)
    det_A = matrix_determinant(matrix);
    isNonzeroDeterminant = det_A ~= 0;
end
