       IDENTIFICATION DIVISION.
       PROGRAM-ID. DECISION03.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 AGE PIC 99.
       01 BALANCE PIC 9(5).

       PROCEDURE DIVISION.
           MOVE 20 TO AGE
           MOVE 5000 TO BALANCE

           IF AGE >= 18 AND BALANCE >= 1000
               DISPLAY "TRUE"
           ELSE
               DISPLAY "FALSE"
           END-IF
           STOP RUN.
           