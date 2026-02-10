CLASS zcl_lab_40_actual_budget_ag DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_39_budget_ag
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_budget REDEFINITION.
        PROTECTED SECTION.
ENDCLASS.


CLASS zcl_lab_40_actual_budget_ag IMPLEMENTATION.
  METHOD get_budget.
    rv_text = 'Actual budget: 100000 EUR'.
  ENDMETHOD.
ENDCLASS.

