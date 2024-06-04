function [menu_state] = check_menu()

    while true
        
        % Ввод пункта меню пользователем.
        user_input = input('\n\nПожалуйста, выберите один из пунктов меню: ', 's');
        
        doubl_inp = str2double(user_input);     % Преобразование к типу double.

        if isnan(doubl_inp)                 % Проверка на NaN.

            disp('Ошибка ввода! Не число! Повторите ввод.');
            continue;

        else 

            check = fix(doubl_inp) - doubl_inp; % Проверка на целочисленность.
            
            if check ~= 0

                disp('Ошибка ввода! Пункт меню должен быть целым числом. Повторите ввод.');
                continue;
            
            else 
                
                if doubl_inp >= 0 && doubl_inp < 4  % Проверка на вход диапазон пунктов меню.

                    menu_state = user_input;      % Присвоение текущего состояния.
								             
                    return;

                else

                    disp('Ошибка ввода! Несуществующий пункт меню. Повторите ввод.');
                    continue;
            
                end
            end
  
        end

    end

end
