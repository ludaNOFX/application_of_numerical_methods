function [B] = check_b(matrix_size)


    while true
        
        user_input = input('Введите свободные члены в виде вектор-столбца виде: ', 's');
        
        try
            eval_input = eval(user_input);
        catch
            disp('Ошибка ввода! Не вектор! Повторите ввод.');
            continue;
        end

        [vert, hor] = size(eval_input);

        if (vert == matrix_size) && (hor == 1) %Проверка соразмерен ли вектор матрице.
            B = eval_input;
            return;

        else
            if (hor == matrix_size) && (vert == 1) %Проверка на то, что введевектор-строка.
                disp('Ошибка ввода! Введена вектор-строка! Повторите ввод.');
                continue;
            else  
                disp('Ошибка ввода! Некорректные данные! Повторите ввод.');
                continue;
            end
        end
    end
end





