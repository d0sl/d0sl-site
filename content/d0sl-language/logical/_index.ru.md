+++
title = "Логические операции"
weight = 20
+++

| Operation     | Alias     | True value         | False value         |
| ------------- | --------- | ------------------ | ------------------- |
| **and**       | **and**   | true **and** true  | false **and** true  |
| **or**        | **or**    | true **or** false  | false **or** false  |
| **not**       | **not**   | **not** false      | **not** true        |
| **check all** | **check** | **check all** true | **check all** false |

Инструкция `check all` эквивалентна инструкции `and` с большим количеством аргументов, каждый из которых находится в новой строке. Вы можете использовать псевдоним `check` для ввода инструкции `check all`.

Например, следующие выражения эквивалентны.

```
A and B and C and D
```

```
check all
    A
    B
    C
    D
end check
```
