# 🟢 COBOL — Day 1

## 1. What is COBOL?

COBOL stands for **Common Business-Oriented Language**.

It is a programming language mainly used for large-scale business systems such as:

- Banking
- Payment systems
- Insurance
- Government systems
- Airline systems

COBOL is designed especially for processing large amounts of business data and transactions.

---

# 2. Basic COBOL Program Structure

A COBOL program is organized into four major divisions:

```text
IDENTIFICATION DIVISION
        ↓
ENVIRONMENT DIVISION
        ↓
DATA DIVISION
        ↓
PROCEDURE DIVISION

Those extra ``` are messing up the Markdown.

Here is the **clean, proper `COBOL_Notes.md`** version. Copy this directly into your `.md` file:

```markdown
# COBOL — Day 1 Notes

## 1. IDENTIFICATION DIVISION

Tells COBOL about the identity of the program.

Example:

```cobol
IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO.
2. ENVIRONMENT DIVISION

Describes the environment and resources that the program works with.

We will learn this later.

3. DATA DIVISION

Defines the data/variables that the program uses.

4. PROCEDURE DIVISION

Contains the instructions and logic that the program actually executes.

3. First COBOL Program
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.
       PROCEDURE DIVISION.
           DISPLAY "HELLO, WORLD!".
           STOP RUN.
4. Important Commands
DISPLAY

Used to display output on the screen.

DISPLAY "HELLO, WORLD!".

Python equivalent:

print("HELLO, WORLD!")

So:

Python: print()
COBOL:  DISPLAY
TOP RUN

Ends the execution of the COBOL program.

STOP RUN.

Mental model:

Start
  ↓
Execute instructions
  ↓
STOP RUN
  ↓
End
5. Period (.)

A period is used as a sentence terminator in COBOL.

Example:

DISPLAY "HELLO".

The . marks the end of the COBOL sentence.

6. DATA DIVISION

The DATA DIVISION is used to define the data/variables used by the program.

Example:

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 NAME PIC X(20).
7. WORKING-STORAGE SECTION

WORKING-STORAGE SECTION is used to define data items/variables that the program uses while it is running.

Example:

       WORKING-STORAGE SECTION.
       01 NAME PIC X(20).
8. Level Number — 01

Example:

01 NAME PIC X(20).

01 is a COBOL level number.

It is commonly used for standalone data items or group-level items.

Important:

01 does NOT mean "first variable".
02 does NOT simply mean "second variable".

Level numbers represent a hierarchy in COBOL.

We will learn this properly later.

9. PIC

PIC means PICTURE.

It describes the format/type of data that a variable can contain.

Example:

01 NAME PIC X(20).

Here:

01      → Level number
NAME    → Variable name
PIC     → PICTURE clause
X       → Alphanumeric/character data
(20)    → 20 character positions

Therefore:

01 NAME PIC X(20).

means that NAME can hold up to 20 character positions.

Examples of values:

PARVINDER
DELHI
HELLO WORLD
ABC123
10. MOVE

MOVE is used to assign/store a value in a variable.

Example:

MOVE "PARVINDER" TO NAME.

Mental model:

"PARVINDER"
      ↓
     NAME

Python equivalent:

name = "Parvinder"
11. DISPLAY Text vs Variable

These are different:

DISPLAY "PARVINDER".

This displays the exact text:

PARVINDER

While:

DISPLAY NAME.

displays whatever value is currently stored inside NAME.

Example:

MOVE "PARVINDER" TO NAME.
DISPLAY NAME.

Output:

PARVINDER
12. Example Program Using a Variable
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MYINFO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NAME PIC X(20).
       PROCEDURE DIVISION.
           MOVE "PARVINDER" TO NAME.
           DISPLAY "NAME: " NAME.
           STOP RUN.

Flow:

Define NAME
    ↓
Store "PARVINDER" in NAME
    ↓
Display NAME
    ↓
Stop program
| Python               | COBOL                       |
| -------------------- | --------------------------- |
| `print()`            | `DISPLAY`                   |
| `name = "Parvinder"` | `MOVE "PARVINDER" TO NAME.` |
| Variable             | Data item                   |
| Program logic        | `PROCEDURE DIVISION`        |
| Data definitions     | `DATA DIVISION`             |
# COBOL — Day 3 Notes

## 1. Decision Making in COBOL

Until now, our programs mainly executed instructions one after another:

```text
MOVE
  ↓
DISPLAY
  ↓
STOP RUN
```

But real programs need to **make decisions**.

For example:

```text
IF age >= 18
    → Adult
ELSE
    → Minor
```

COBOL uses the `IF` statement for decision making.

---

## 2. IF Statement

Basic syntax:

```cobol
IF condition
    statement
END-IF.
```

Example:

```cobol
IF AGE >= 18
    DISPLAY "ADULT"
END-IF.
```

The condition is evaluated as either:

```text
TRUE
or
FALSE
```

If the condition is TRUE, the statement inside the `IF` executes.

If it is FALSE, the statement is skipped.

### Mental Model

```text
           Condition
               ↓
        ┌──────┴──────┐
      TRUE           FALSE
       ↓                ↓
    Execute           Skip
       ↓
    END-IF
```

---

## 3. Comparison Operators

COBOL uses comparison operators to create conditions.

| Meaning                  | Operator |
| ------------------------ | -------- |
| Equal to                 | `=`      |
| Greater than             | `>`      |
| Less than                | `<`      |
| Greater than or equal to | `>=`     |
| Less than or equal to    | `<=`     |
| Not equal to             | `NOT =`  |

Examples:

```cobol
IF AGE = 18
    DISPLAY "AGE IS 18"
END-IF.
```

```cobol
IF AGE > 18
    DISPLAY "ABOVE 18"
END-IF.
```

```cobol
IF AGE <= 18
    DISPLAY "18 OR BELOW"
END-IF.
```

---

## 4. Numeric Data with PIC 9

Previously we used:

```cobol
01 NAME PIC X(20).
```

`X` is used for alphanumeric/character data.

For numeric data, we use `9`.

Example:

```cobol
01 AGE PIC 99.
```

Here:

```text
01      → Level number
AGE     → Data item name
PIC     → PICTURE clause
99      → Two numeric positions
```

Therefore:

```cobol
01 AGE PIC 99.
```

can store values such as:

```text
18
20
25
99
```

---

## 5. PIC 9(5)

Instead of writing:

```cobol
PIC 99999
```

we can write:

```cobol
PIC 9(5)
```

This represents **five numeric positions**.

Example:

```cobol
01 BALANCE PIC 9(5).
```

This can represent a five-digit numeric field.

---

## 6. IF + ELSE

`ELSE` allows us to specify what should happen when the condition is FALSE.

Syntax:

```cobol
IF condition
    statement-if-true
ELSE
    statement-if-false
END-IF.
```

Example:

```cobol
IF AGE >= 18
    DISPLAY "ADULT"
ELSE
    DISPLAY "MINOR"
END-IF.
```

If:

```text
AGE = 20
```

Output:

```text
ADULT
```

If:

```text
AGE = 15
```

Output:

```text
MINOR
```

---

## 7. Why END-IF?

`END-IF` tells COBOL exactly where the `IF` structure ends.

Example:

```cobol
IF AGE >= 18
    DISPLAY "ADULT"
ELSE
    DISPLAY "MINOR"
END-IF.
```

Think of it as:

```text
IF
 ↓
condition
 ↓
TRUE  → action
FALSE → another action
 ↓
END-IF
```

### Important distinction

```text
END-IF → Ends the IF structure

.      → Ends the COBOL sentence
```

So:

```cobol
END-IF.
```

contains two separate concepts:

```text
END-IF
  +
.
```

`END-IF` is especially useful in larger programs and nested conditions because it makes the boundaries of the IF structure explicit.

---

# 8. AND

`AND` combines two or more conditions.

With `AND`, **all conditions must be TRUE**.

Example:

```cobol
IF AGE >= 18 AND BALANCE >= 1000
    DISPLAY "TRUE"
ELSE
    DISPLAY "FALSE"
END-IF.
```

COBOL checks both:

```text
AGE >= 18
       AND
BALANCE >= 1000
```

For example:

```text
AGE = 20
BALANCE = 5000
```

Evaluation:

```text
20 >= 18       → TRUE
5000 >= 1000   → TRUE
                     ↓
                   TRUE
```

Output:

```text
TRUE
```

But:

```text
AGE = 20
BALANCE = 500
```

gives:

```text
20 >= 18       → TRUE
500 >= 1000    → FALSE
                     ↓
                   FALSE
```

Output:

```text
FALSE
```

---

# 9. OR

`OR` also combines conditions, but **at least one condition must be TRUE**.

Example:

```cobol
IF AGE < 18 OR AGE > 60
    DISPLAY "SPECIAL CATEGORY"
END-IF.
```

If:

```text
AGE = 15
```

then:

```text
AGE < 18 → TRUE
```

Therefore the complete condition is TRUE.

If:

```text
AGE = 70
```

then:

```text
AGE > 60 → TRUE
```

Again, the complete condition is TRUE.

---

# 10. NOT

`NOT` reverses a condition.

Example:

```cobol
IF NOT AGE = 18
    DISPLAY "AGE IS NOT 18"
END-IF.
```

Conceptually:

```text
AGE = 18
   ↓
TRUE
   ↓
NOT
   ↓
FALSE
```

---

# 11. Complete Day 3 Program

```cobol
IDENTIFICATION DIVISION.

PROGRAM-ID. DECISION03.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 AGE PIC 99.
01 BALANCE PIC 9(5).
PROCEDURE DIVISION.
    MOVE 20 TO AGE.
    MOVE 5000 TO BALANCE.

    IF AGE >= 18 AND BALANCE >= 1000
        DISPLAY "TRUE"
    ELSE
        DISPLAY "FALSE"
    END-IF.

    STOP RUN.
```

### Program Flow

```text
Define AGE
    ↓
Define BALANCE
    ↓
AGE = 20
    ↓
BALANCE = 5000
    ↓
Check:
AGE >= 18
AND
BALANCE >= 1000
    ↓
Both TRUE
    ↓
DISPLAY "TRUE"
    ↓
END-IF
    ↓
STOP RUN
```

Output:

```text
TRUE
```

---

# 12. Changing the Values

### Example 1

```cobol
MOVE 20 TO AGE.
MOVE 5000 TO BALANCE.
```

Result:

```text
TRUE
```

### Example 2

```cobol
MOVE 17 TO AGE.
MOVE 5000 TO BALANCE.
```

Evaluation:

```text
17 >= 18      → FALSE
5000 >= 1000  → TRUE
                    ↓
                   FALSE
```

Result:

```text
FALSE
```

### Example 3

```cobol
MOVE 20 TO AGE.
MOVE 500 TO BALANCE.
```

Evaluation:

```text
20 >= 18      → TRUE
500 >= 1000   → FALSE
                    ↓
                   FALSE
```

Result:

```text
FALSE
```

---

# 13. Python Comparison

These concepts are similar to Python, but COBOL has its own syntax and structure.

| Python               | COBOL                    |
| -------------------- | ------------------------ |
| `print()`            | `DISPLAY`                |
| `variable = value`   | `MOVE value TO variable` |
| `if`                 | `IF`                     |
| `else`               | `ELSE`                   |
| `and`                | `AND`                    |
| `or`                 | `OR`                     |
| `not`                | `NOT`                    |
| `:` + indentation    | `END-IF`                 |
| Variable declaration | `DATA DIVISION`          |

Example:

### Python

```python
age = 20
balance = 5000

if age >= 18 and balance >= 1000:
    print("TRUE")
else:
    print("FALSE")
```

### COBOL

```cobol
MOVE 20 TO AGE.
MOVE 5000 TO BALANCE.

IF AGE >= 18 AND BALANCE >= 1000
    DISPLAY "TRUE"
ELSE
    DISPLAY "FALSE"
END-IF.
```

The **logic is similar**, but the syntax and data-definition model are different.

---

# 14. Day 3 Key Concepts

You should now understand:

* `IF`
* `ELSE`
* `END-IF`
* Conditions
* Comparison operators
* `PIC 9`
* `PIC 9(5)`
* `AND`
* `OR`
* `NOT`
* Numeric data items
* How COBOL evaluates TRUE/FALSE conditions

### Most important pattern

```cobol
IF condition
    action
ELSE
    other-action
END-IF.
```

### Most important mental model

```text
              CONDITION
                  ↓
          Is it TRUE or FALSE?
             ↙       ↘
          TRUE       FALSE
           ↓           ↓
        Action       Action
             ↘       ↙
               END-IF
                  ↓
              Continue
```

**Day 03 complete ✅**
