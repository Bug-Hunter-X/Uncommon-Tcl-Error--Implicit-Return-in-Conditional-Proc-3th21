# Uncommon Tcl Error: Implicit Return in Conditional Proc

This repository demonstrates a subtle error in Tcl code where a procedure uses an if statement without an explicit return value in all branches. This can lead to unexpected behavior, especially when the procedure doesn't terminate properly based on the conditional expression.  This problem is often missed during code review or testing, making it an uncommon yet significant issue.

The `bug.tcl` file shows the erroneous code. The `bugSolution.tcl` file demonstrates the correct implementation. The issue is that if x <= 10, then the procedure ends without an explicit return statement.  In Tcl this will return the last expression evaluated (which may vary in complex code), making the result unpredictable.