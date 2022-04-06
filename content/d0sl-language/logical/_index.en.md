+++
title = "Logical operations"
weight = 20
+++

| Operation | Alias | True value | False value |
|-----------|-------|-----------------------|------------------------|
|**and**    |**and**| true **and** true     | false **and** true     |
|**or**     |**or** | true **or** false     | false **or** false     |
|**not**    |**not**| **not** false         | **not** true           |
|**check all**|**check**| **check all** true| **check all** false    |


`check all` instruction is equivalent of `and` instruction with many arguments each is in new line. You can use `check` alias to enter `check all` instruction.

For example,  the next expressions are equivalent. 

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