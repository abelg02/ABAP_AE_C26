INTERFACE zif_c02_ae_03
 PUBLIC .

    METHODS:
    get_airports
      IMPORTING
                iv_airport_id     TYPE string
      RETURNING VALUE(rs_airport) TYPE /dmo/airport.

ENDINTERFACE.
