CLASS zcl_lab_09_account_ag DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set_iban
      IMPORTING iv_iban TYPE string.

    METHODS get_iban
      RETURNING VALUE(rv_iban) TYPE string.

  PRIVATE SECTION.
    DATA iban TYPE string.
ENDCLASS.



CLASS zcl_lab_09_account_ag IMPLEMENTATION.

  METHOD set_iban.
    me->iban = iv_iban.
  ENDMETHOD.

  METHOD get_iban.
    rv_iban = me->iban.
  ENDMETHOD.

ENDCLASS.

