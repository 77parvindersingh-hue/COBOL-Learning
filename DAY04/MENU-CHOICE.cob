       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENU-CHOICE.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CHOICE PIC 9.
       PROCEDURE DIVISION.
           MOVE 3 TO CHOICE.
           EVALUATE CHOICE
               WHEN 1
                   DISPLAY "ADDITION"
               WHEN 2
                   DISPLAY "SUBTRACTION"
               WHEN 3
                   DISPLAY "MULTIPLICATION"
               WHEN OTHER
                   DISPLAY "INVALID CHOICE"
           END-EVALUATE.
           STOP RUN.
           
          
      