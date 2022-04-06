+++
title = "Requirements"
weight = 5
+++

So, our main goal is to give a person the opportunity to describe logical rules in an understandable language. We call it d0sl or Delta Zero Semantic Language.

For this, we should to implement the language, as well as provide a convenient editor (or IDE Integrated Development Environment) that would allow to create d0sl documents and even immediately run.

There are various ways to reach this, but we chose as a bases the powerfull Jetbrains [MPS (Meta Programming System)](https://www.jetbrains.com/mps/).

{{% notice note %}}
Our examples work with version MPS **2021.3** so you must first install it from [here](https://www.jetbrains.com/mps/download). Please be careful and choose version **2021.3** for your computer's OS.
{{% /notice %}}

We choose MPS because:

> 1.  MPS IDE is very similar to Intelliji Idea, PyCharm and other Jetbrains products.
> 2.  MPS helps to create powerful DSL (domain specific languages) and helps to create their powerful extensions.
> 3.  With MPS we can build plugins of d0sl Language for Intelliji Idea
> 4.  We were able to develop a technology that does not depend on the MPS and can be used separately. But we see no reason to abandon the convenience of the MPS where it is possible.
