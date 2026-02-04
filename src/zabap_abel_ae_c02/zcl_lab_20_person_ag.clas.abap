CLASS zcl_lab_20_person_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set_name FINAL
      IMPORTING iv_name TYPE string.

  PROTECTED SECTION.
    DATA name TYPE string.

ENDCLASS.



CLASS zcl_lab_20_person_ag IMPLEMENTATION.

  METHOD set_name.
    name = iv_name.
  ENDMETHOD.

ENDCLASS.

