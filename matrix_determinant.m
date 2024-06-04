function [det_matrix] = matrix_determinant(matrix)
    % Получаем размер матрицы
    [cols, rows] = size(matrix);

    % В случае матрицы размером 1x1, определитель квадратной матрицы равен первому элементу
    if rows == 1 && cols == 1
        det_matrix = matrix(1, 1);
        return;
    end
    
    % Инициализация переменной для суммы определителя
    det_matrix = 0;
    
    % Вычисление определителя через миноры
    for i = 1:cols
        % Создание подматрицы для минора, исключая первую строку и i-й столбец
        sub_matrix = matrix(2:end, [1:i-1, i+1:end]);
        
        % Рекурсивный вызов функции для вычисления определителя подматрицы
        det_sub_matrix = matrix_determinant(sub_matrix);
        
        % Добавление результата произведения элемента матрицы и его минора к сумме определителя
        det_matrix = det_matrix + ((-1)^(1+i)) * matrix(1, i) * det_sub_matrix;
    end
end
