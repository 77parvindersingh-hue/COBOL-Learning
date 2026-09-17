       IDENTIFICATION DIVISION.
       PROGRAM-ID. LOOP04.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 99.
       PROCEDURE DIVISION.
           MOVE 1 TO NUM.
           PERFORM UNTIL NUM > 10
               DISPLAY NUM
               ADD 1 TO NUM
           END-PERFORM.
           STOP RUN.



