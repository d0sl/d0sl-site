+++
title = "Как запустить модель из MPS"
weight = 50
+++

{{% notice tip %}}
Если вы определите предикат `start()` без параметров в вашей семантической модели, он будет вызываться автоматически при запуске модели через контекстное меню в проекте MPS.
{{% /notice %}}

Например, следующий предикат `start()` в примере про автодром сначала устанавливает препятствия и дорожные знаки на поле автодрома, а затем запускает графический интерфейс пользователя, вызывая другую доменную функцию `start`.

```python
def start() means
  check all
    # set walls
    AutodromeDSL.add wall(5, 1)
    AutodromeDSL.add wall(5, 14)
    AutodromeDSL.add wall(10, 8)
    # set road signs
    AutodromeDSL.add road sign(4, 5, "south")
    AutodromeDSL.add road sign(6, 9, "north")
    AutodromeDSL.add road sign(7, 7, "east")

    AutodromeDSL.start(10, 500)
  end
end def
```
