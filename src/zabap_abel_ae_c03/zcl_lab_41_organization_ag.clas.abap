CLASS zcl_lab_41_organization_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set_headquarters IMPORTING iv_hq TYPE string.
    METHODS get_headquarters RETURNING VALUE(rv_hq) TYPE string.

  PRIVATE SECTION.
    DATA headquarters TYPE string.
ENDCLASS.



CLASS ZCL_LAB_41_ORGANIZATION_AG IMPLEMENTATION.


  METHOD set_headquarters.
    headquarters = iv_hq.
  ENDMETHOD.


  METHOD get_headquarters.
    rv_hq = headquarters.
  ENDMETHOD.
ENDCLASS.
