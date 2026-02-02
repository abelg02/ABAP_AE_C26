CLASS zcl_lab_05_flight_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS check_flight
      IMPORTING
        iv_carrid TYPE /dmo/carrier_id
        iv_connid TYPE /dmo/connection_id
      RETURNING VALUE(rv_exists) TYPE abap_bool.
ENDCLASS.



CLASS zcl_lab_05_flight_ag IMPLEMENTATION.

  METHOD check_flight.

    SELECT SINGLE @abap_true
      FROM /dmo/flight
      WHERE carrier_id = @iv_carrid
        AND connection_id = @iv_connid
      INTO @rv_exists.

    IF sy-subrc <> 0.
      rv_exists = abap_false.
    ENDIF.

  ENDMETHOD.

ENDCLASS.

