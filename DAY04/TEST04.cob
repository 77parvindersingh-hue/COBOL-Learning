       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST04.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MARKS PIC 999.
       PROCEDURE DIVISION.
           MOVE 76 TO MARKS.
           EVALUATE TRUE
               WHEN MARKS >=90
                  DISPLAY "GRADE A"
               WHEN MARKS >=80
                  DISPLAY "GRADE B"
               WHEN MARKS >=70
                  DISPLAY "GRADE C"
               WHEN MARKS >=60
                  DISPLAY "GRADE D"
               WHEN OTHER
                  DISPLAY "FAIL"
           END-EVALUATE.
           STOP RUN.
           
               