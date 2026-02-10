CLASS zcl_lab_45_chrome DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA log TYPE string.

    METHODS on_close_window
      FOR EVENT close_window OF zif_lab_05_browser.

ENDCLASS.



CLASS zcl_lab_45_chrome IMPLEMENTATION.

  METHOD on_close_window.
    log = 'Window closed'.
  ENDMETHOD.

ENDCLASS.

