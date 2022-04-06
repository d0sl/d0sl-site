+++
title = "Переменные"
weight = 35
+++

Вы можете использовать локальные переменные внутри блока `check all`, введя ключевое слово `var`.

{{% notice warning %}}
Существуют важные ограничения на использование переменных. Во-первых, вы не можете изменить их значение после того, как оно было вычислено. Во-вторых, при каждом вызове предиката значение локальной переменной вычисляется только один раз. То есть, если вы используете ссылку на переменную несколько раз в предикате, ее значение будет вычислено только при первом использовании
{{% /notice %}}

#### Пример

```python
# Testing for sin & cos
def test() means
  check all
    var angle = 35
    var cosinus = Math.cos(angle)
    var sinus = Math.sin(angle)
    var sum of squares = Math.pow(cosinus, 2) + Math.pow(sinus, 2)

    # considering the features of the library java.lang.Math
    # and inaccurate calculations when converting degrees to radians
    sum of squares <= 1
    sum of squares >= 0.999999
  end
end def
```
