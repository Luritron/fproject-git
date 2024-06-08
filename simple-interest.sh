#!/bin/bash

# simple-interest.sh
# Скрипт для вычисления простых процентов

# Проверка на правильное количество аргументов
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 principal rate time"
    exit 1
fi

# Присваивание переменных
principal=$1
rate=$2
time=$3

# Вычисление простого процента
interest=$(echo "$principal * $rate * $time / 100" | bc -l)

# Вывод результата
echo "Simple Interest is: $interest"
