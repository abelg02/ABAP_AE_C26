CLASS zcl_lab_44_operating_system DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_lab_05_browser.

ENDCLASS.



CLASS zcl_lab_44_operating_system IMPLEMENTATION.

METHOD zif_lab_05_browser~mouse_movement.
  RAISE EVENT zif_lab_05_browser~close_window.
ENDMETHOD.

ENDCLASS.

