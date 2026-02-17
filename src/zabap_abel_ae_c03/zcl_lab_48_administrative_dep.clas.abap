CLASS zcl_lab_48_administrative_dep DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    DATA:
      emp_id TYPE string,
      log    TYPE string.

    EVENTS payroll_paid.

    METHODS:
      constructor IMPORTING iv_id TYPE string,
      notify_employee.

ENDCLASS.



CLASS ZCL_LAB_48_ADMINISTRATIVE_DEP IMPLEMENTATION.


  METHOD constructor.
    emp_id = iv_id.
  ENDMETHOD.


  METHOD notify_employee.

    log = |Paid: { emp_id }|.
    RAISE EVENT payroll_paid.

  ENDMETHOD.
ENDCLASS.
