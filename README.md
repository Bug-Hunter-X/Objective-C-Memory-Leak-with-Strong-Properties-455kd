# Objective-C Memory Leak with Strong Properties

This repository demonstrates a common memory leak in Objective-C applications arising from the improper use of strong properties.  The `bug.m` file shows code that leaks memory due to a strong reference not being properly released.  The `bugSolution.m` file demonstrates the correct way to handle memory management in this situation, preventing the leak.

## Problem
Strong properties in Objective-C retain the objects they reference.  If these objects are not properly released when no longer needed, memory leaks occur. This example shows a simple case, but in larger applications, this can lead to significant performance issues and crashes.