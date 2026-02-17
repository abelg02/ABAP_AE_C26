CLASS zcl_lab_exec_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.



CLASS ZCL_LAB_EXEC_AG IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* 1 Polimorfismo clases
    DATA lt_orgs TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_ag.
    APPEND NEW zcl_lab_30_org_germany_ag( ) TO lt_orgs.
    APPEND NEW zcl_lab_31_org_france_ag( ) TO lt_orgs.

    LOOP AT lt_orgs INTO DATA(lo_org).
      out->write( lo_org->get_location( ) ).
    ENDLOOP.

* 2 Polimorfismo interfaces
    DATA lt_emp TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_ag.
    APPEND NEW zcl_lab_32_internal_empl_ag( ) TO lt_emp.
    APPEND NEW zcl_lab_33_expatriate_empl_ag( ) TO lt_emp.

    LOOP AT lt_emp INTO DATA(lo_emp).
      out->write( lo_emp->get_employees_count( ) ).
    ENDLOOP.

* 3 Asociación
    DATA(lo_student) = NEW zcl_lab_34_student_ag( ).
    lo_student->set_name( 'Carlos' ).

    DATA(lo_college) = NEW zcl_lab_35_college_ag( ).
    lo_college->enroll_student( lo_student ).

    out->write( lo_college->student_ref->get_name( ) ).

* 4 Composición
    DATA(lo_screen) = NEW zcl_lab_37_screen_ag( ).
    lo_screen->set_type( 'OLED' ).
    DATA(lo_phone) = NEW zcl_lab_36_phone_ag( lo_screen ).
    out->write( lo_phone->get_screen_type( ) ).

* 5 Múltiples referencias
    DATA(lo_price1) = NEW zcl_lab_38_prod_price_ag( ).
    DATA(lo_price2) = lo_price1.
    lo_price2->price = 500.
    out->write( lo_price1->price ).

* 6 Abstract
    DATA lo_budget TYPE REF TO zcl_lab_39_budget_ag.
    lo_budget = NEW zcl_lab_40_actual_budget_ag( ).
    out->write( lo_budget->get_budget( ) ).

* 7 OBJECT genérico
    DATA lo_obj TYPE REF TO object.
    lo_obj = NEW zcl_lab_41_organization_ag( ).

    CALL METHOD lo_obj->('SET_HEADQUARTERS')
      EXPORTING
        iv_hq = 'Madrid'.

    DATA lv_hq TYPE string.

    CALL METHOD lo_obj->('GET_HEADQUARTERS')
      RECEIVING
        rv_hq = lv_hq.

    out->write( lv_hq ).

  ENDMETHOD.
ENDCLASS.
