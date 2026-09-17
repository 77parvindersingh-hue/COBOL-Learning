       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOP03.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9.
       PROCEDURE DIVISION.
           MOVE 1 TO NUM.
           PERFORM 5 TIMES
               DISPLAY NUM
               ADD 1 TO NUM
           END-PERFORM.

           STOP RUN.
           
            