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
