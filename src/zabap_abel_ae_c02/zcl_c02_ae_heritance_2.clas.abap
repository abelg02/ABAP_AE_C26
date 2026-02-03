CLASS zcl_c02_ae_heritance_2 DEFINITION INHERITING FROM zcl_c02_ae_heritance_1
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor,
      get_architecture REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_c02_ae_heritance_2 IMPLEMENTATION.

  METHOD get_architecture.

    super->get_architecture( ).

    me->architecture = '32 bits'.

    super->get_architecture( ).

    rv_architecture = me->architecture.

    super->get_architecture( ).
  ENDMETHOD.

  METHOD constructor.

    super->constructor( ).

    "me->architecture = '32 bits'.

  ENDMETHOD.

ENDCLASS.
