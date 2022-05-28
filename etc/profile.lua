dirr = '/'
    -- Модулs
    gpu = require('component').gpu
    term = require('term')
    db = require('component').debug
    tunnel = require('component').modem
    event = require('event') -- Обработчик событий
    comp = require('computer')

  -- Загрузка ОС
  term.setCursor(1,2)
  gpu.setForeground(0xdef01a)
  io.write('ДОБРО ПОЖАЛОВАТЬ!')
  term.setCursor(1,3)
  io.write('Пожалуйста, введите ваш никнейм >. ')
  player = io.read()
  term.setCursor(1,5)
  io.write('Спасибо, за использование нашей серии продуктов CORTEX')
  term.setCursor(1,6)
  io.write('Приятного пользования!')
  os.sleep(2)

    -- Диструктивные функции
    function back(color)
    gpu.setBackground(color)
    end
    function text(color)
    gpu.setForeground(color)
    end
    function redraw()
      term.clear()
      gpu.setBackground(0xFFFFFF)
      gpu.setForeground(0x000000)
    sumb = 1
    while sumb <= 80 do
        io.write(' ')
      sumb = sumb + 1
    end
    term.setCursor(1,1)
    print(' Совет Безопасности ('.. player ..')')
    back(0x000000)
    end

    -- Вызов редрава
    redraw()

    -- Начало диструктивной оболочки
    while 1 < 2 do
    text(0x32d415)
    io.write(player .. '@cmd~$ ')
    x,y = term.getCursor()
    term.setCursor(1,1)
    gpu.setBackground(0xFFFFFF)
    gpu.setForeground(0x000000)
  sumb = 1
  while sumb <= 80 do
      io.write(' ')
    sumb = sumb + 1
  end
  term.setCursor(1,1)
  print(' Совет Безопасности ('.. player ..')')
  back(0x000000)
  if y == 1 then
    y = y + 2
    x = 1
    text(0x32d415)

    term.setCursor(x,y)
    io.write(player .. '@cmd~$ ')
  else
    text(0x32d415)
    io.write(player .. '@cmd~$ ')
  term.setCursor(x,y)
  end
    text(0xFFFFFF)
    arg = io.read()

      -- Начало кейсов комманд




      if arg == 'принять смс' then
        io.write('port >. ')
        port = io.read()
        tunnel.open(tonumber(port))
        q1, w2, e3, r4, t5, y6 = event.pull('modem_message')
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        print('Модем получил сообщение!')
        print(y6)
      end

      if arg == 'отправить смс' then
        io.write('port >. ')
        port = io.read()
        comp.beep()
        io.write('Введите сообщение >. ')
        sms = io.read()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        tunnel.broadcast(tonumber(port), player .. ': ' .. sms)
      end

      if arg == 'очистить' then
          redraw()
        end

      if arg == 'reboot' then
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()
        comp.beep()

          os.execute('reboot')
        end

        if arg == 'фыр' then
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()
          comp.beep()

          back(0x1a30f0)
          text(0xFFFFFF)
          gpu.fill(1, 1, 80, 25, " ")
          term.setCursor(1,1)
          print('Error 0x0345')
          os.sleep(0.2)
          print('@sd -> 0x353')
          os.sleep(0.2)
          print('@3d -> 0x33f53')
          os.sleep(0.2)
          print('@sd4d -> 0x35ddf3')
          print('Thats error sometimes is appeared, not aproved your eyes, ignore, please, good luck!')
          os.sleep(0.2)
          print('Rebooting...')
          os.sleep(2)
          comp.beep()
          os.execute('reboot')
          end

          if arg == 'редактор' then
            io.write('Файл > ')
            file = io.read()
            os.execute('edit '.. dirr .. '/' .. file)
          end

          if arg == 'сф' then
            os.execute('ls ' .. dirr)
          end

          if arg == 'сд' then
            io.write('директория > ')
            dirr = io.read()
            os.execute('cd ' .. dirr)
            end

          if arg == 'му' then
            os.execute('ls /mnt/')
          end

          if arg == 'кф' then
            io.write('Что и откуда копировать > ')
            dir1 = io.read()
            io.write('Куда копировать > ')
            dir2 = io.read()
            os.execute('cp ' .. dir1 .. ' ' .. dir2)
            end

            if arg == 'выполнить' then
              io.write('Программа > ')
              filee = io.read()
              os.execute(dirr .. '/' .. filee)
            end

            if arg == 'сп' then
              io.write('Название папки > ')
              folder = io.read()
              os.execute('mkdir '..dirr..'/'..folder)
            end

            if arg == 'уф' then
              io.write('Название файла > ')
              obj = io.read()
              os.execute('rm '..dirr..'/'..obj)
            end

            if arg == 'уп' then
              io.write('Название папки > ')
              obj = io.read()
              os.execute('rmdir '..dirr..'/'..obj)
            end

            if arg == 'калькулятор' then
              num1 = io.read()
              dig = io.read()
              num2 = io.read()

              if dig == '+' then
              print(num1 .. ' + ' .. num2 .. ' = ' .. tonumber(num1) + tonumber(num2))
                end

                if dig == '-' then
                print(num1 .. ' - ' .. num2 .. ' = ' .. tonumber(num1) - tonumber(num2))
                  end

                  if dig == '*' then
                  print(num1 .. ' * ' .. num2 .. ' = ' .. tonumber(num1) * tonumber(num2))
                    end

                    if dig == ':' then
                    print(num1 .. ' / ' .. num2 .. ' = ' .. tonumber(num1) / tonumber(num2))
                      end

            end

            if arg == 'включить креатив' then
              db.runCommand('gamemode c ' .. player)
            end

            if arg == 'включить выживание' then
              db.runCommand('gamemode s ' .. player)
            end

            if arg == 'записать обновление' then
              print('Укажите накопитель:')
              os.execute('ls /mnt/')
              io.write('Накопитель >> ')
              dev = io.read()
              os.execute('pastebin get 5qDmAQif /mnt/' .. dev ..'/updater.lua')
              print('Готово')
            end

            if arg == 'выдать' then
              io.write('Предмет >. ')
              entity = io.read()
              io.write('Кол-во >.')
              count = io.read()
              db.runCommand('give '..player..' '..entity..' '..count)
              print('Игроку '..player..' выдано '..entity..' в количестве '..count)
              end


    -- Конец цикла
    end
