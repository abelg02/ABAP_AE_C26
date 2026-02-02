CLASS zcl_c02_ae_instances DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: log TYPE string.

    METHODS:
      constructor.

    CLASS-METHODS:
      class_constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_c02_ae_instances IMPLEMENTATION.

  METHOD class_constructor.
    log = |{ log } static constructor -->|.
  ENDMETHOD.

  METHOD constructor.
    log = |{ log } instance constructor -->|.
  ENDMETHOD.

ENDCLASS.
