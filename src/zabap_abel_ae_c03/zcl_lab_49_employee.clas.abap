CLASS zcl_lab_49_employee DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA log TYPE string.

    METHODS on_payroll_paid
      FOR EVENT payroll_paid OF zcl_lab_48_administrative_dep.

ENDCLASS.



CLASS zcl_lab_49_employee IMPLEMENTATION.

  METHOD on_payroll_paid.
    log = 'Payroll received'.
  ENDMETHOD.

ENDCLASS.

