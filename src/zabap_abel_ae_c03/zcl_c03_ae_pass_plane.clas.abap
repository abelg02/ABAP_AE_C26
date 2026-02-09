CLASS zcl_c03_ae_pass_plane DEFINITION INHERITING FROM zcl_c03_ae_airplane
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
    meTHODS: discount.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_c03_ae_pass_plane IMPLEMENTATION.

  METHOD airplane_type.
    rv_airplane_type = 'Passenger Plane'.
  ENDMETHOD.

  METHOD discount.

  ENDMETHOD.

ENDCLASS.
