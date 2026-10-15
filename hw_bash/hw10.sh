#!/bin/bash

watch_dir="$HOME/watch"

echo "$watch_dir"
current_files_in_watch_dir=()
for file in "$watch_dir"/*; do  #цикл который записывает в массив все файлы которые уже есть в папке watch
    if [ -f "$file" ] && [[ "file" != *.back ]]; then
        current_files_in_watch_dir+=("$file")
    fi
done
ls "$watch_dir"
while true; do  #перы=вый цикл который проверяет наличие новых файлов в папке watch
   for file in "$watch_dir"/*; do  #внутренний цикл который записывает в массив все файлы которые уже есть в папке watch
    if [[ "$file" == *.back ]]; then
        continue
    fi

    if [ ! -f "$file" ]; then
        continue
    fi
        found=false
        for current_file in "${current_files_in_watch_dir[@]}"; do
            if [ "$file" == "$current_file" ]; then
                found=true
            fi
        done
        if [ -f "$file" ] && [ "$found" = false ]; then #цикл который проверяет найден ли файл в папке watch и если да то выводит сообщение что найден новый файл и добавляет его в массив
            echo "found file : $file "
            cat "$file"
            mv "$file" "$file.back"
            current_files_in_watch_dir+=("$file.back")
        fi
    done
sleep 5
done