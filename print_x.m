function [] = print_x(x, matrix_size)
    
    fprintf('\n');
    for i = 1:1:matrix_size
           
        fprintf('X%d равен %.2f\n', i, x(i)); % Выводим каждый из корней в цикле.

    end
    
end