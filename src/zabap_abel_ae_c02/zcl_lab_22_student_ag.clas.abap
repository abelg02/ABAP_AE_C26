CLASS zcl_lab_22_student_ag DEFINITION INHERITING FROM zcl_lab_21_classroom_ag
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS assign_student.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_22_student_ag IMPLEMENTATION.

  METHOD assign_student.
    DATA(lo_classroom) = NEW zcl_lab_21_classroom_ag( ).
  ENDMETHOD.

ENDCLASS.

