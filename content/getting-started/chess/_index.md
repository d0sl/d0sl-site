+++
title = "Eight Queens puzzle"
date = 2019-02-01T14:53:57+07:00
weight = 15
chapter = true
pre = "<i class='fas fa-chess-queen'></i> "
+++

# The eight queens puzzle

The eight queens puzzle is the problem of placing eight chess queens on an 8×8 chessboard so that no two queens threaten each other.

{{% notice note %}}
The problem of finding all solutions to the 8-queens problem can be quite computationally expensive, as there are 4,426,165,368 (i.e., 64C8) possible arrangements of eight queens on an 8×8 board, but only 92 solutions.
{{% /notice %}}

The semantic way to solve this problem is as follows:

- Imagine that we have a robot that can arrange randomly eight queens on a chessboard. But he doesn't know whether the position is the right one or not.
- Then, after each arrangement, the robot asks us if he placed the queens on the board correctly. If we say that is correct, the robot considers the task completed. And if we say what is wrong, the robot tries to place the queens in a different way.
- In order to determine whether the queens are placed correctly on the chessboard, we will write semantic rules in the d0sl language. For example: For any two queens on a chessboard, it must be true that they are not on the same diagonal, and they are not on the same line.

```python
def check board(board : ChessBoard) means 
  check all 
    var queens = ChessDSL.get queens(board) 
    for all q1, q2 in queens 
      not ChessDSL.on one line(q1, q2) and 
      not ChessDSL.on one diagonal(q1, q2)
  end 
end def
```

{{% notice note %}}
Next, we show how to run the example and see the code.
{{% /notice %}}
