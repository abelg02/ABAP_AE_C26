CLASS zcl_lab_46_mobile_operator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    CLASS-EVENTS new_call
      EXPORTING VALUE(ev_phone_number) TYPE string.

    CLASS-METHODS assign_call
      IMPORTING iv_phone TYPE string.

ENDCLASS.



CLASS ZCL_LAB_46_MOBILE_OPERATOR IMPLEMENTATION.


  METHOD assign_call.
    RAISE EVENT new_call EXPORTING ev_phone_number = iv_phone.
  ENDMETHOD.
ENDCLASS.
