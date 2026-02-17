CLASS zcl_lab_32_internal_empl_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_ag.
ENDCLASS.



CLASS ZCL_LAB_32_INTERNAL_EMPL_AG IMPLEMENTATION.


  METHOD zif_lab_04_employee_ag~get_employees_count.
    rv_count = 120.
  ENDMETHOD.
ENDCLASS.
