CLASS zcl_lab_06_elements_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    DATA ms_object TYPE ty_elem_objects.

    CONSTANTS gc_one   TYPE string VALUE 'UNO'.
    CONSTANTS gc_two   TYPE string VALUE 'DOS'.
    CONSTANTS gc_three TYPE string VALUE 'TRES'.
    CONSTANTS gc_four  TYPE string VALUE 'CUATRO'.

    METHODS set_object
      IMPORTING
        iv_class     TYPE string
        iv_instance  TYPE string
        iv_reference TYPE string.
ENDCLASS.



CLASS zcl_lab_06_elements_ag IMPLEMENTATION.

  METHOD set_object.
    ms_object-class     = iv_class.
    ms_object-instance  = iv_instance.
    ms_object-reference = iv_reference.
  ENDMETHOD.

ENDCLASS.

