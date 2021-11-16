---
title: C
---
[Up one Page](prog-lang) | [Back to ToC](index)

# Functions

Needs a function prototype if the function is to be defined after `int
main()`, as such:

```c
#include <stdio.h>

// This is the function prototype
int add_two(int x);

int main() {
        printf("2 + 2 = %d", add_two(2));
        return 0;
}

// This is the function definition
int add_two(int num) {
        return num + 2;
} 
```
