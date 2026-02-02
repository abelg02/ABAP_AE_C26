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

    out->write( zcl_c01_ae_main=>c_saludo ).
    out->write( zcl_c01_ae_main=>c_logali-c_master ).


    "Método Funcional"
    lo_instance->get_flights(
    EXPORTING
      iv_flight = '00000009'
      iv_agency = '0002'
    RECEIVING
      rv_exist  = DATA(lv_exist)
  ).

    IF lo_instance->get_flights(
        EXPORTING
          iv_flight = '00000009'
          "iv_agency = '000000'
          ) EQ abap_true.

      out->write( 'Exists' ).
    ELSE.
      out->write( 'Does not Exist' ).

    ENDIF.

    out->write( lo_instance->get_flight( '00000009' ) ).


    out->write( lo_instance->company ).

    "Esto daría error porque no se puede modificar este atributo"
    "lo_instance->company = 'Coca cola'.

    "out->write( lo_instance->company ).


  ENDMETHOD.

ENDCLASS.

