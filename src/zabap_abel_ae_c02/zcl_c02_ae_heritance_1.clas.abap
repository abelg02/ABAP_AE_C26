CLASS zcl_c02_ae_heritance_1 DEFINITION
PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


    DATA: architecture TYPE string. " VALUE '64 bits'.

    METHODS:
      constructor,
      get_architecture RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.
    "DATA: architecture TYPE string VALUE '64 bits'.
  PRIVATE SECTION.
    "DATA: architecture TYPE string VALUE '64 bits'.

ENDCLASS.



CLASS zcl_c02_ae_heritance_1 IMPLEMENTATION.

  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.

  METHOD constructor.
    me->architecture = '64 bits'.
  ENDMETHOD.

ENDCLASS.
