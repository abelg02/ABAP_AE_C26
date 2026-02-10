CLASS zcl_lab_32_internal_empl_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_ag.
ENDCLASS.


CLASS zcl_lab_32_internal_empl_ag IMPLEMENTATION.
  METHOD zif_lab_04_employee_ag~get_employees_count.
    rv_count = 120.
  ENDMETHOD.
ENDCLASS.

