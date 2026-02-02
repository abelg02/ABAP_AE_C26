CLASS zcl_lab_08_work_record_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS open_new_record
      IMPORTING
        iv_date       TYPE zdate
        iv_first_name TYPE string
        iv_last_name  TYPE string
        iv_surname    TYPE string OPTIONAL.

  PRIVATE SECTION.
    CLASS-DATA date       TYPE zdate.
    CLASS-DATA first_name TYPE string.
    CLASS-DATA last_name  TYPE string.
    CLASS-DATA surname    TYPE string.
ENDCLASS.



CLASS zcl_lab_08_work_record_ag IMPLEMENTATION.

  METHOD open_new_record.
    date       = iv_date.
    first_name = iv_first_name.
    last_name  = iv_last_name.
    surname    = iv_surname.
  ENDMETHOD.

ENDCLASS.

