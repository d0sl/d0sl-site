+++
title = "Use"
weight = 43
+++

In Semantic Model the `use` statement allows you to include other Semantic and Domain models. This means that if you included another semantic model through the `use` statement, you can call its predicates. Similarly it works with a domain model.

For example, below we include AutodromeDSL domain model:

```rust
use AutodromeDSL from org.d0sl.examples.auto.AutodromeDSL
```

After that we can call domain functions defined in AutodromeDSL in our Semantic Model like this:

```python
def can stop2(car : Car) means 
  check all 
    not AutodromeDSL.wall ahead(car) 
    not AutodromeDSL.road sign(car) 
    AutodromeDSL.car ahead(car) 
  end 
end def
```

{{% notice tip %}}
You can specify the implementation class for the domain model in the `from` field (for the Semantic Model, this is not necessary). The implementation class needs to be specified only if you want to run the model inside the MPS project.
{{% /notice %}}

{{% notice warning %}}
If you specified an implementation class, it should be accessible via dependencies in your MPS project. The implementation can be added either through the jar file, or implemented directly in the MPS in a separate solution, as implemented for Chess and Autodrome examples.
{{% /notice %}}