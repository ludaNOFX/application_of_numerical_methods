function [matrix] = check_matrix()

    while true
        
        % Ввод коэффициентов при неизвестных в СЛАУ.
        user_input = input('Введите коэффициенты при неизвестных в матричном виде: ', 's'); 						
        
        try 
            eval_input = eval(user_input);  % Проверка на вычисление выражения.
					
        catch
            disp('Ошибка ввода! Не матрица! Повторите ввод.');
            continue;
        end
    
        [cols, rows] = size(eval_input); 

        if cols == 1 || rows == 1                 % Проверка является ли ввод вектором.
            disp('Ошибка ввода! Векторное значение! Повторите ввод.');
            continue;
        elseif cols ~= rows                % Проверка на квадратность.
            disp('Ошибка ввода! Количество столбцов матрицы должно быть равно количеству строк. Повторите ввод.'); 
            continue;
        elseif ~checkNonzeroDeterminant(eval_input)
            disp('Определитель матрицы равен нулю, решение методом Крамера невозможно. Повторите ввод.'); 
            continue;
        else
            matrix = eval_input;      %Присвоение текущего состояния.
            return;
        end
    end
end