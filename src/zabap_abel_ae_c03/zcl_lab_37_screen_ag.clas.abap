CLASS zcl_lab_37_screen_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set_type IMPORTING iv_type TYPE string.
    METHODS get_type RETURNING VALUE(rv_type) TYPE string.

  PRIVATE SECTION.
    DATA screen_type TYPE string.
ENDCLASS.



CLASS ZCL_LAB_37_SCREEN_AG IMPLEMENTATION.


  METHOD set_type.
    screen_type = iv_type.
  ENDMETHOD.


  METHOD get_type.
    rv_type = screen_type.
  ENDMETHOD.
ENDCLASS.
