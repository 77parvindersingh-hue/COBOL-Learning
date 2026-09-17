       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOOP02.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 COUNT1 PIC 99.
         PROCEDURE DIVISION.
               MOVE 5 TO COUNT1.
               PERFORM COUNT1 TIMES
                  DISPLAY "HELLO"
                  
               END-PERFORM.
               STOP RUN.
               