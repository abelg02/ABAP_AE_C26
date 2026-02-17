CLASS zcl_c03_ae_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_C03_AE_MAIN IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
* Polymorphism
    DATA: lt_airplanes TYPE STANDARD TABLE OF REF TO zcl_c03_ae_airplane,
          lo_airplane type ref to zcl_c03_ae_airplane,
          lo_cargo     TYPE REF TO zcl_c03_ae_plane,
          lo_pass      TYPE REF TO zcl_c03_ae_pass_plane.
    lo_cargo = NEW #( ).
    APPEND lo_cargo TO lt_airplanes.

    lo_pass = NEW #( ).
    APPEND lo_pass TO lt_airplanes.

    LOOP AT lt_airplanes INTO lo_airplane.
      out->write( lo_airplane->airplane_type( ) ).
    ENDLOOP.




* Polymorphism wit interfaces
    DATA: lt_companies   TYPE STANDARD TABLE OF REF TO zif_04_log_c403,
          lo_company     TYPE REF TO zif_04_log_c403,
          lo_company_eu  TYPE REF TO zcl_18_company_eu_log_c403,
          lo_company_usa TYPE REF TO zcl_19_company_usa_log_c403,
          lo_plant       TYPE REF TO zcl_20_plant_log_c403.

    lo_company_eu = NEW #( ).
    APPEND lo_company_eu TO lt_companies.

    lo_company_usa = NEW #( ).
    APPEND lo_company_usa TO lt_companies.

    lo_plant = NEW #( ).

    LOOP AT lt_companies INTO lo_company.
      out->write( lo_company->define_company( ) ).
      out->write( lo_plant->assign_company( lo_company ) ).
    ENDLOOP.


* Association
    DATA(lo_credit_card) = NEW zcl_21_credit_card_log_c403( ).
    DATA(lo_client) = NEW zcl_22_client_log_c403( ).

    lo_credit_card->set_card_num( '7777 8888 3333 4444' ).

    lo_client->set_credit_card( lo_credit_card ).

    out->write( lo_client->get_credit_card( )->get_card_num( ) ).


*Composition
    DATA(lo_keyboard) = NEW zcl_23_keyboard_log_c403( ).
    DATA(lo_laptop) = NEW zcl_24_laptop_log_c403( lo_keyboard ).

    lo_keyboard->keyboard_type = 'ES'.

    out->write( lo_laptop->keyboard->keyboard_type ).


* Generic class OBJECT
    DATA: lo_object TYPE REF TO object.

    lo_object = NEW zcl_25_product_log_c403( ).

    DATA(lv_method) = 'RETURN_CATEGORY'.

    DATA: lv_category TYPE string.

    CALL METHOD lo_object->(lv_method) RECEIVING rv_category = lv_category.

    out->write( lv_category ).

* Events
    DATA(lo_timer) = NEW zcl_26_timer_log_c403( ).
    DATA(lo_conexion) = NEW zcl_27_conexion_log_c403( ).

    " Handler Reference
    SET HANDLER lo_conexion->on_time_out FOR lo_timer.

    DO.
      WAIT UP TO 1 SECONDS.
      lo_timer->increment_counter( 1 ).

      IF lo_conexion->hour IS INITIAL.
        out->write( |Event not yet executed: { cl_abap_context_info=>get_system_time( ) }| ).
      ELSE.
        out->write( |Event was raised at: { lo_conexion->hour }-{ lo_conexion->sender_user }| ).
        EXIT.
      ENDIF.

    ENDDO.


* Events with interfaces
    DATA(lo_americanbank) = NEW zcl_28_bank_log_c403( ).
    DATA(lo_bankclient) = NEW zcl_29_bankclient_log_c403( ).

    SET HANDLER lo_bankclient->on_new_transfer FOR lo_americanbank ACTIVATION abap_true.

    DO 5 TIMES.
      WAIT UP TO 1 SECONDS.
      out->write( lo_americanbank->create_notification( ) ).
      out->write( lo_bankclient->notification ).

      IF sy-index = 3.
        SET HANDLER lo_bankclient->on_new_transfer FOR lo_americanbank ACTIVATION abap_false.
        lo_bankclient->notification = 'No handler for event new transfer'.
      ENDIF.
    ENDDO.

  data(lv_result) = 5 / 0.



  ENDMETHOD.
ENDCLASS.
