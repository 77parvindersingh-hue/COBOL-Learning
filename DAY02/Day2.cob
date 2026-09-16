         IDENTIFICATION DIVISION.
       PROGRAM-ID. DAY2.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 NAME PIC X(20).
        01 AGE PIC X(25).
        PROCEDURE DIVISION.
            MOVE "PARVINDER" TO NAME.
            MOVE "19" TO AGE.
            DISPLAY "NAME:" NAME.
            DISPLAY "AGE:" AGE.
            STOP RUN.

