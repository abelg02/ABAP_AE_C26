CLASS zcl_lab_42_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS ZCL_LAB_42_MAIN IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* --- EVENTO INSTANCIA
    DATA(lo_screen) = NEW zcl_lab_42_screen( 'AMOLED' ).
    DATA(lo_nav)    = NEW zcl_lab_43_navigation( ).

    SET HANDLER lo_nav->on_touch_screen FOR lo_screen.

    lo_screen->element_selected( iv_x = 10 iv_y = 20 ).
    out->write( lo_nav->log ).


* --- EVENTO INTERFAZ
    DATA(lo_os) = NEW zcl_lab_44_operating_system( ).
    DATA(lo_chrome) = NEW zcl_lab_45_chrome( ).

    SET HANDLER lo_chrome->on_close_window FOR lo_os.
    lo_os->zif_lab_05_browser~mouse_movement( ).
    out->write( lo_chrome->log ).


* --- DESACTIVAR HANDLER
    SET HANDLER lo_chrome->on_close_window FOR lo_os ACTIVATION abap_false.
    lo_os->zif_lab_05_browser~mouse_movement( ).


* --- EVENTO ESTÁTICO
    SET HANDLER zcl_lab_47_customer_service=>on_new_call.
    zcl_lab_46_mobile_operator=>assign_call( '600123456' ).
    out->write( zcl_lab_47_customer_service=>log ).


* --- ALL INSTANCES
    DATA(lo_emp) = NEW zcl_lab_49_employee( ).

    SET HANDLER lo_emp->on_payroll_paid FOR ALL INSTANCES.

    DATA(lo_a1) = NEW zcl_lab_48_administrative_dep( 'E01' ).
    DATA(lo_a2) = NEW zcl_lab_48_administrative_dep( 'E02' ).
    DATA(lo_a3) = NEW zcl_lab_48_administrative_dep( 'E03' ).

    lo_a1->notify_employee( ).
    lo_a2->notify_employee( ).
    lo_a3->notify_employee( ).

    out->write( lo_emp->log ).

  ENDMETHOD.
ENDCLASS.
