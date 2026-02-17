CLASS zcl_lab_04_person_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set_age
      IMPORTING iv_age TYPE i.

    METHODS get_age
      EXPORTING ev_age TYPE i.

  PRIVATE SECTION.
    DATA age TYPE i.
ENDCLASS.



CLASS ZCL_LAB_04_PERSON_AG IMPLEMENTATION.


  METHOD set_age.
    age = iv_age.
  ENDMETHOD.


  METHOD get_age.
    ev_age = age.
  ENDMETHOD.
ENDCLASS.
