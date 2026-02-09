CLASS zcl_c03_ae_plane DEFINITION
PUBLIC
  INHERITING FROM zcl_c03_ae_airplane
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_c03_ae_plane IMPLEMENTATION.

  METHOD airplane_type.
    rv_airplane_type = 'Cargo plane'.
  ENDMETHOD.

ENDCLASS.
