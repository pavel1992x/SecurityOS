term = require('term')
gpu = require('component').gpu
fs = require('filesystem')
term.clear()
gpu.setForeground(0xbad411)
print('Вас приветствует установщик Совет Безопасности v1.0')
os.execute('ls /mnt/')
io.write('Введите, на какое устройство будет установлена система >> ')
dev = io.read()
bin = {
"address.lua", "alias.lua", "cat.lua", "cd.lua", "clear.lua", "components.lua", "cp.lua", "date.lua", "df.lua", "dmesg.lua", "du.lua", "echo.lua", "edit.lua", "find.lua", "flash.lua", "free.lua", "grep.lua", "head.lua", "hostname.lua", "install.lua", "label.lua", "less.lua", "list.lua", "ln.lua", "ls.lua",
"lshw.lua", "lua.lua", "man.lua", "mkdir.lua", "mktmp.lua", "mount.lua", "mv.lua", "pastebin.lua", "primary.lua", "ps.lua", "pwd.lua", "rc.lua", "reboot.lua", "redstone.lua", "resolution.lua", "rm.lua", "rmdir.lua", "set.lua", "sh.lua", "shutdown.lua", "sleep.lua", "source.lua", "time.lua", "touch.lua",
"tree.lua", "umount.lua", "unalias.lua", "unset.lua", "uptime.lua", "useradd.lua", "userdel.lua", "wget.lua", "which.lua", "yes.lua"
}

boot = {
  "00_base.lua", "01_process.lua", '02_os.lua', "03_io.lua", "04_component.lua", "10_devfs.lua", "89_rc.lua", "90_filesystem.lua", "91_gpu.lua", "92_keyboard.lua", "93_term.lua", "94_shell.lua"
}

etc = {
"edit.cfg", "motd", "profile.lua", "rc.cfg"
}

lib = {
  "bit32.lua", "buffer.lua", "colors.lua", "devfs.lua", "event.lua", "filesystem.lua", "internet.lua", "io.lua", "keyboard.lua", "note.lua", "package.lua", "pipe.lua", "process.lua", "rc.lua", "serialization.lua", "sh.lua", "shell.lua", "sides.lua", "term.lua", "text.lua", "thread.lua", "transforms.lua", "tty.lua", "uuid.lua", "vt100.lua"
}

lib0core = {
  "boot.lua", "cursor.lua", "device_labeling.lua", "full_buffer.lua", "full_cursor.lua", "full_event.lua", "full_filesystem.lua", "full_keyboard.lua", "full_ls.lua", "full_sh.lua", "full_shell.lua", "full_text.lua", "full_transforms.lua", "full_vt.lua", "install_basics.lua", "install_utils.lua", "lua_shell.lua"
}

lib0core0devfs = {
  "01_hw.lua", "02_utils.lua"
}

lib0core0devfs0adapters = {
"computer.lua", "eeprom.lua", "filesystem.lua", "gpu.lua", "internet.lua", "modem.lua", "screen.lua"
}

lib0tools = {
  "programLocations.lua", "transfer.lua"
}


print('Создаю папку bin')
os.execute('mkdir /mnt/' .. dev .. '/bin')

i = 1
while i < 1000 do
    if bin[i] == nil then
    break
    else
        print('Скачиваю файл ' .. bin[i])
        os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/bin/' .. bin[i] ..' /mnt/'..dev..'/bin/'..bin[i])
        os.sleep(0.1)
        end
        i = i + 1
    end

    print('Создаю папку boot')
    os.execute('mkdir /mnt/' .. dev .. '/boot')

    i = 1
    while i < 1000 do
        if boot[i] == nil then
        break
        else
            print('Скачиваю файл ' .. boot[i])
            os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/boot/' .. boot[i] ..' /mnt/'..dev..'/boot/'..boot[i])
            os.sleep(0.1)
            end
            i = i + 1
        end

        print('Создаю папку etc')
        os.execute('mkdir /mnt/' .. dev .. '/etc')

        i = 1
        while i < 1000 do
            if etc[i] == nil then
            break
            else
                print('Скачиваю файл ' .. etc[i])
                os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/etc/' .. etc[i] ..' /mnt/'..dev..'/etc/'..etc[i])
                os.sleep(0.1)
                end
                i = i + 1
            end


            print('Создаю папку lib')
            os.execute('mkdir /mnt/' .. dev .. '/lib')

            print('Создаю папку lib/core')
            os.execute('mkdir /mnt/' .. dev .. '/lib/core')

            print('Создаю папку lib/tools')
            os.execute('mkdir /mnt/' .. dev .. '/lib/tools')

            print('Создаю папку lib/core/devfs')
            os.execute('mkdir /mnt/' .. dev .. '/lib/core/devfs')

            print('Создаю папку lib/core/devfs/adapters')
            os.execute('mkdir /mnt/' .. dev .. '/lib/core/devfs/adapters')

            i = 1
            while i < 1000 do
                if lib[i] == nil then
                break
                else
                    print('Скачиваю файл ' .. lib[i])
                    os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/lib/' .. lib[i] ..' /mnt/'..dev..'/lib/'..lib[i])
                    os.sleep(0.1)
                    end
                    i = i + 1
                end

                i = 1
                while i < 1000 do
                    if lib0core[i] == nil then
                    break
                    else
                        print('Скачиваю файл ' .. lib0core[i])
                        os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/lib/core/' .. lib0core[i] ..' /mnt/'..dev..'/lib/core/'..lib0core[i])
                        os.sleep(0.1)
                        end
                        i = i + 1
                    end

                    i = 1
                    while i < 1000 do
                        if lib0core0devfs[i] == nil then
                        break
                        else
                            print('Скачиваю файл ' .. lib0core0devfs[i])
                            os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/lib/core/devfs/' .. lib0core0devfs[i] ..' /mnt/'..dev..'/lib/core/devfs/'..lib0core0devfs[i])
                            os.sleep(0.1)
                            end
                            i = i + 1
                        end



                        while i < 1000 do
                            if lib0tools[i] == nil then
                            break
                            else
                                print('Скачиваю файл ' .. lib0tools[i])
                                os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/lib/tools/' .. lib0tools[i] ..' /mnt/'..dev..'/lib/tools/'..lib0tools[i])
                                os.sleep(0.1)
                                end
                                i = i + 1
                            end

                            i = 1
                            while i < 1000 do
                                if lib0core0devfs0adapters[i] == nil then
                                break
                                else
                                    print('Скачиваю файл ' .. lib0core0devfs0adapters[i])
                                    os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/lib/core/devfs/adapters/'.. lib0core0devfs0adapters[i] ..' /mnt/'..dev..'/lib/core/devfs/adapters/'.. lib0core0devfs0adapters[i])
                                    os.sleep(0.1)
                                    end
                                    i = i + 1
                                end

                                os.execute('wget https://raw.githubusercontent.com/pavel1992x/SecurityOS/main/init.lua' .. ' /mnt/'..dev..'/init.lua')

                                print('Спасибо за установку!')
                                os.sleep(2)
                                os.execute('reboot')
