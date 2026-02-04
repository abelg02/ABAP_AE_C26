CLASS zcl_lab_24_partner_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_company_capital
      RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_24_partner_ag IMPLEMENTATION.

  METHOD get_company_capital.
    DATA(lo_company) = NEW zcl_lab_23_company_ag( ).
    rv_capital = lo_company->capital.
  ENDMETHOD.

ENDCLASS.

