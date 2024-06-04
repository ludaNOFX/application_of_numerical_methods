function [x] = kramers_method_func(matrix, matrix_size, B)

    tic                                    % Начинаем отсчет времени.

    % Инициализируется вектор x с размерностью matrix_size x 1
    x = zeros(matrix_size, 1);

    % Вычисление определителя исходной матрицы коэффициентов det_A
    det_A = matrix_determinant(matrix);

    % Цикл для i от 1 до matrix_size
    for i = 1:matrix_size
        % Создание временной матрицы temp_matrix
        temp_matrix = matrix;

        % Замена i-го столбца на вектор B
        temp_matrix(:, i) = B;

        % Вычисление определителя temp_det матрицы temp_matrix
        temp_det = matrix_determinant(temp_matrix);

        % Вычисление i-го корня системы уравнений x(i)
        x(i) = temp_det / det_A;
    end

    timer_my_func = toc;                  % записываем значение в переменную.
    print_x(x, matrix_size)

    fprintf('\nВычисление определителя при помощи встроенной функции det():\n');

    tic                                    % Начинаем отсчет времени.

    % Инициализируется вектор x с размерностью matrix_size x 1
    x = zeros(matrix_size, 1);

    % Вычисление определителя исходной матрицы коэффициентов det_A
    det_A = det(matrix);

    % Цикл для i от 1 до matrix_size
    for i = 1:matrix_size
        % Создание временной матрицы temp_matrix
        temp_matrix = matrix;

        % Замена i-го столбца на вектор B
        temp_matrix(:, i) = B;

        % Вычисление определителя temp_det матрицы temp_matrix
        temp_det = det(temp_matrix);

        % Вычисление i-го корня системы уравнений x(i)
        x(i) = temp_det / det_A;
    end

    timer_matlab_func = toc;              % Записываем значение в переменную.

    fprintf('\nКорни, полученные благодаря встроенному методу:\n\n'); 
    print_x(x, matrix_size);              % Вывод корней для метода матлаб на экран.
    
    fprintf('\nВремя вычисления по разработанной функции:   %d\n', timer_my_func);
    fprintf('\nВремя вычисления по встроенной функции det(): %e\n', timer_matlab_func);
end