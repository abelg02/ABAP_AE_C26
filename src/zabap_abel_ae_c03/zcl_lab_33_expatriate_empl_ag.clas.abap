CLASS zcl_lab_33_expatriate_empl_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_lab_04_employee_ag.
ENDCLASS.



CLASS ZCL_LAB_33_EXPATRIATE_EMPL_AG IMPLEMENTATION.


  METHOD zif_lab_04_employee_ag~get_employees_count.
    rv_count = 35.
  ENDMETHOD.
ENDCLASS.
