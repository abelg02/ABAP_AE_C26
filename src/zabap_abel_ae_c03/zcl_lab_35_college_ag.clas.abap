CLASS zcl_lab_35_college_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    DATA student_ref TYPE REF TO zcl_lab_34_student_ag.
    METHODS enroll_student IMPORTING io_student TYPE REF TO zcl_lab_34_student_ag.
    PROTECTED SECTION.
ENDCLASS.



CLASS ZCL_LAB_35_COLLEGE_AG IMPLEMENTATION.


  METHOD enroll_student.
    student_ref = io_student.
  ENDMETHOD.
ENDCLASS.
