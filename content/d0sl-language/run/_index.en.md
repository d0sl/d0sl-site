+++
title = "How to run model in MPS"
weight = 50
+++

{{% notice tip %}}
If you define the predicate `start()` without parameters in your semantic model, it will be called automatically when you run the model through the context menu in the MPS project.
{{% /notice %}}

For example, the following `start()` predicate in the example about the Autodrome first sets up obstacles and road signs on the autodrome field, and then starts the graphical user interface by calling the another `start` domain function.

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