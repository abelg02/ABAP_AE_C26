CLASS zcl_lab_43_navigation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA log TYPE string.

    METHODS on_touch_screen
      FOR EVENT touch_screen OF zcl_lab_42_screen
      IMPORTING ev_x ev_y sender.

ENDCLASS.



CLASS ZCL_LAB_43_NAVIGATION IMPLEMENTATION.


  METHOD on_touch_screen.

    log = |Type:{ sender->screen_type } X:{ ev_x } Y:{ ev_y }|.

  ENDMETHOD.
ENDCLASS.
