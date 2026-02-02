CLASS zcl_c02_ae_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_c02_ae_main IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lo_instance) = NEW zcl_c02_ae_instances(  ).
    out->write( zcl_c02_ae_instances=>log ).

    DATA(lo_instance2) = NEW zcl_c02_ae_instances(  ).
    out->write( zcl_c02_ae_instances=>log ).

  ENDMETHOD.

ENDCLASS.
