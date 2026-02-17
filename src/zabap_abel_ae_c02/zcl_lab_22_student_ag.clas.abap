CLASS zcl_lab_22_student_ag DEFINITION INHERITING FROM zcl_lab_21_classroom_ag
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS assign_student.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_LAB_22_STUDENT_AG IMPLEMENTATION.


  METHOD assign_student.
    DATA(lo_classroom) = NEW zcl_lab_21_classroom_ag( ).
  ENDMETHOD.
ENDCLASS.
