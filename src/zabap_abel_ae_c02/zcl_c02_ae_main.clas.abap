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


    "Heritance
    DATA(lo_heritance) = NEW zcl_c02_ae_heritance_2(  ).

    out->write( lo_heritance->get_architecture(  ) ).

    lo_heritance->architecture = '32 bits'.

* Narrowing Cast --> up cast
    data(lo_animal) = new zcl_c02_ae_animal( ).
    DATA(lo_lion) = NEW zcl_c02_ae_lion( ).

    out->write( lo_animal->walk( ) ).
    out->write( lo_lion->walk( ) ).

    lo_animal = lo_lion.

    out->write( 'Narrowing (Up cast)' ).
    out->write( lo_animal->walk( ) ).

* Widening cast --> Down Cast
    TRY.
        lo_lion ?= lo_animal.
      CATCH cx_sy_move_cast_error.
    ENDTRY.

    out->write( 'Widening (Down cast)' ).
    out->write( lo_animal->walk( ) ).
    out->write( lo_lion->walk( ) ).

  ENDMETHOD.

ENDCLASS.
