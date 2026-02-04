CLASS zcl_lab_25_collaborator_ag DEFINITION INHERITING FROM zcl_lab_24_partner_ag
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_capital
      RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_25_collaborator_ag IMPLEMENTATION.

  METHOD get_capital.
    rv_capital = me->get_company_capital( ).
  ENDMETHOD.

ENDCLASS.

