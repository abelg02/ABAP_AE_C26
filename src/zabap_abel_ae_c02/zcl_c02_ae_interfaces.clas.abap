CLASS zcl_c02_ae_interfaces DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES:
      zif_c02_ae_01,
      zif_c02_ae_02.

    ALIASES: get_conn_id FOR zif_c02_ae_01~get_conn_id,
             set_conn_id FOR zif_c02_ae_01~set_conn_id,
             get_customer FOR zif_c02_ae_02~get_customer.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_c02_ae_interfaces IMPLEMENTATION.

  METHOD get_conn_id.

    rv_conn_id = me->zif_c02_ae_01~conn_id.

  ENDMETHOD.

  METHOD set_conn_id.

    me->zif_c02_ae_01~conn_id = iv_conn_id.

  ENDMETHOD.

  METHOD get_customer.

    SELECT SINGLE FROM /dmo/customer
    FIELDS first_name,
           last_name
    INTO @rs_cust_address.

  ENDMETHOD.

  METHOD zif_c02_ae_03~get_airports.

  ENDMETHOD.

ENDCLASS.
