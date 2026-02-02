CLASS zcl_lab_03_contract_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA cntr_type TYPE c LENGTH 2.

    METHODS set_creation_date
      IMPORTING iv_creation_date TYPE zdate.

  PROTECTED SECTION.
    DATA creation_date TYPE zdate.

  PRIVATE SECTION.
    DATA client TYPE string.
ENDCLASS.



CLASS zcl_lab_03_contract_ag IMPLEMENTATION.

  METHOD set_creation_date.
    creation_date = iv_creation_date.
  ENDMETHOD.

ENDCLASS.

