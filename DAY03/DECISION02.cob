         IDENTIFICATION DIVISION .
   
          PROGRAM-ID. DECISION02.
          DATA DIVISION.
          WORKING-STORAGE SECTION.
          01 AGE PIC 99.
          PROCEDURE DIVISION.
            MOVE 15 TO AGE.
            IF AGE >= 18 
                DISPLAY "TRUE"
            ELSE
                  DISPLAY "FALSE"
            
            END-IF.
            STOP RUN.
