CLASS zcl_lab_16_price_discount_ag DEFINITION INHERITING FROM zcl_lab_15_flight_price_ag
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_16_price_discount_ag IMPLEMENTATION.

  METHOD add_price.
    DATA(ls) = is_flight.
    ls-price = ls-price * '0.90'.
    APPEND ls TO mt_flights.
  ENDMETHOD.

ENDCLASS.

