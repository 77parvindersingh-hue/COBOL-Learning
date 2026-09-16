       IDENTIFICATION DIVISION.
       PROGRAM-ID. IFS.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MARKS PIC 999.
       PROCEDURE DIVISION.
           MOVE 85 TO MARKS.
           IF MARKS >= 90
               DISPLAY "GRADE A"
           ELSE IF MARKS >= 80
               DISPLAY "GRADE B"
           ELSE IF MARKS >= 70
               DISPLAY "GRADE C"
           ELSE IF MARKS >= 60
               DISPLAY "GRADE D"
           ELSE
               DISPLAY "FAIL"
           END-IF.
           STOP RUN.
      * THIS IS NESTED IF NEXT WE WILL SEE EVALUATE 
      


