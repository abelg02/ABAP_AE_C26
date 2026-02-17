CLASS zcl_lab_10_constructor_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA log TYPE string.

    METHODS:
      constructor.

    CLASS-METHODS:
      class_constructor.

ENDCLASS.



CLASS ZCL_LAB_10_CONSTRUCTOR_AG IMPLEMENTATION.


  METHOD class_constructor.
    log = |Static constructor -> |.
  ENDMETHOD.


  METHOD constructor.
    log = |{ log }Instance constructor -> |.
  ENDMETHOD.
ENDCLASS.
