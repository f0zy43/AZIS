#!/usr/bin/env bash

while true; do
    echo "Введите директорию:"
    read directory
    dir="$directory"
    echo "Вы ввели: $dir"

    if [ -z "$dir" ]; then
        echo "Ошибка, вы не ввели директорию"
        continue
    fi

    if [ -d "$dir" ]; then
        echo "Директория $dir существует"
        echo "Скрытые файлы в директории:"
        
        find "$dir" -type f -name ".*" -exec basename {} \; 2>/dev/null
        echo "Кол-во скрытых файлов в директории:"
        find "$dir" -type f -name ".*" -exec basename {} \; 2>/dev/null | wc -l
        break
    else
        echo "Директория $dir не существует"
    fi
done
