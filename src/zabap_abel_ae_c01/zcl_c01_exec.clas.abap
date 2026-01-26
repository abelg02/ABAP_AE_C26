CLASS zcl_c01_exec DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS zcl_c01_exec IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    "=============================
    " MÉTODOS DE INSTANCIA
    "=============================
    DATA(lo_instance) = NEW zcl_c01_ae_main( ).

    lo_instance->set_attr( attr1 = 'Value1' ).
    lo_instance->get_attr( IMPORTING attr1 = DATA(lv_attr1) ).

    "=============================
    " MÉTODOS ESTÁTICOS
    "=============================
    zcl_c01_ae_main=>set_attr2( iv_attr2 = 'Value2' ).
    zcl_c01_ae_main=>get_attr2( IMPORTING ev_attr2 = DATA(lv_attr2) ).

    out->write( |Valor instancia: { lv_attr1 }| ).
    out->write( |Valor estático:  { lv_attr2 }| ).

  ENDMETHOD.

ENDCLASS.

