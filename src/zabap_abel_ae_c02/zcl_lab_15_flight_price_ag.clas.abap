CLASS zcl_lab_15_flight_price_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA mt_flights TYPE STANDARD TABLE OF /dmo/flight WITH EMPTY KEY.

    METHODS add_price
      IMPORTING is_flight TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_15_flight_price_ag IMPLEMENTATION.

  METHOD add_price.
    APPEND is_flight TO mt_flights.
  ENDMETHOD.

ENDCLASS.

