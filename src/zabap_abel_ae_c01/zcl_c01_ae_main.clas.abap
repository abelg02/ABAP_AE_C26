CLASS zcl_c01_ae_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    " COMPONENTES DE INSTANCIA
    DATA attr1 TYPE string.

    METHODS:
      set_attr IMPORTING attr1 TYPE string,
      get_attr EXPORTING attr1 TYPE string.

    " COMPONENTES ESTÁTICOS
    CLASS-DATA attr2 TYPE string.

    CLASS-METHODS:
      set_attr2 IMPORTING iv_attr2 TYPE string,
      get_attr2 EXPORTING ev_attr2 TYPE string.

ENDCLASS.




CLASS zcl_c01_ae_main IMPLEMENTATION.

  METHOD set_attr.
    me->attr1 = attr1.
  ENDMETHOD.

  METHOD get_attr.
    attr1 = me->attr1.
  ENDMETHOD.

  METHOD set_attr2.
    attr2 = iv_attr2.
  ENDMETHOD.

  METHOD get_attr2.
    ev_attr2 = attr2.
  ENDMETHOD.

ENDCLASS.


