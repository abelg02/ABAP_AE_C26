CLASS zcl_lab_14_grid_ag DEFINITION INHERITING FROM zcl_lab_13_view_ag
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        iv_view_type TYPE string
        iv_box       TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_14_grid_ag IMPLEMENTATION.

  METHOD constructor.
    super->constructor( iv_view_type ).
    box = iv_box.
  ENDMETHOD.

ENDCLASS.

