CLASS zcl_c02_ae_abstract DEFINITION ABSTRACT
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      merchandise_output
        RETURNING VALUE(rv_merchandise) TYPE string,

      production_line ABSTRACT
        RETURNING VALUE(rv_production) TYPE string,

      input_products ABSTRACT
        RETURNING VALUE(rv_input) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_C02_AE_ABSTRACT IMPLEMENTATION.


  METHOD merchandise_output.
    rv_merchandise = 'Merchandise output'.
  ENDMETHOD.
ENDCLASS.
