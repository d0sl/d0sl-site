+++
title = "Variables"
weight = 35
+++

You can use local variables inside `check all` block by entering `var` keyword.

{{% notice warning %}}
There are important restrictions on the use of variables. First, you cannot change their value after it has been calculated. Secondly, each time the predicate is called, the value of a local variable is calculated only once. That is, if you use the variable reference several times within the predicate, the value will be calculated only when you first use
{{% /notice %}}

#### Variable example

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