+++
title = "Требования"
weight = 5
+++

Итак, наша главная цель - дать человеку возможность описывать логические правила на понятном языке. Мы называем его d0sl или Delta Zero Semantic Language.

Для этого нам необходимо реализовать язык, а также предоставить удобный редактор (или IDE Integrated Development Environment), который позволил бы создавать документы d0sl и даже сразу запускать.

Существуют различные способы достижения этой цели, но мы выбрали в качестве основы мощную систему программирования Jetbrains [MPS (Meta Programming System)](https://www.jetbrains.com/mps/).

{{% notice note %}}
Наши примеры работают с версией MPS **2021.3**, поэтому вы должны сначала установить ее из [здесь](https://www.jetbrains.com/mps/download/previous.html). Пожалуйста, будьте внимательны и выбирайте версию **2021.3** для ОС вашего компьютера.
{{% /notice %}}

Мы выбираем MPS, потому что:

> 1.  MPS IDE очень похожа на Intelliji Idea, PyCharm и другие продукты Jetbrains.
> 2.  MPS помогает создавать мощные DSL (предметно-ориентированные языки).
> 3.  С помощью MPS мы можем создавать плагины языка d0sl для Intelliji Idea.
> 4.  Мы смогли разработать технологию, которая не зависит от MPS и может использоваться отдельно. Но мы не видим причин отказываться от удобства MPS там, где это возможно.
