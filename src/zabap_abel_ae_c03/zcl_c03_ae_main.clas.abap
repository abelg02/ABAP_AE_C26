CLASS zcl_c03_ae_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_c03_ae_main IMPLEMENTATION.
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


  ENDMETHOD.

ENDCLASS.
