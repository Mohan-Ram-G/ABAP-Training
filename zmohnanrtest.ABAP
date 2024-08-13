CLASS zmohnanrtest DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zmohnanrtest IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    TYPES: BEGIN OF ty_table,
             ind  TYPE i,
             line TYPE c LENGTH 10,
           END OF ty_table.
    DATA: lv_variable TYPE c LENGTH 10,
          ls_table    TYPE ty_table,
          lt_table    TYPE STANDARD TABLE OF ty_table.

    ls_table-ind = 1.
    ls_table-line = 'Line 1'.
    APPEND ls_table TO lt_table.
    CLEAR: ls_table.

    ls_table-ind = 3.
    ls_table-line = 'Line 3'.
    APPEND ls_table TO lt_table.
    CLEAR: ls_table.

    ls_table-ind = 2.
    ls_table-line = 'Line 2'.
    INSERT ls_table INTO lt_table INDEX 2.
    CLEAR: ls_table.

    DELETE lt_table WHERE ind = 2.

    ls_table-ind = 3.
    ls_table-line = 'Line 45'.

*    MODIFY TABLE lt_table FROM ls_table WHERE ind = 3.

*    SORT lt_table BY ind.

    out->write( |ABAP Practice| ).

  ENDMETHOD.
ENDCLASS.
