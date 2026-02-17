CLASS zcl_lab_34_student_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set_name IMPORTING iv_name TYPE string.
    METHODS get_name RETURNING VALUE(rv_name) TYPE string.

  PRIVATE SECTION.
    DATA name TYPE string.
ENDCLASS.



CLASS ZCL_LAB_34_STUDENT_AG IMPLEMENTATION.


  METHOD set_name.
    name = iv_name.
  ENDMETHOD.


  METHOD get_name.
    rv_name = name.
  ENDMETHOD.
ENDCLASS.
