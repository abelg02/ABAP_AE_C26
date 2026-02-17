CLASS zcl_c02_ae_abstract_child DEFINITION ABSTRACT INHERITING FROM zcl_c02_ae_abstract
PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: production_line REDEFINITION,
      input_products REDEFINITION,
      abstract_method ABSTRACT.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_C02_AE_ABSTRACT_CHILD IMPLEMENTATION.


  METHOD input_products.
    rv_input = 'input products'.
  ENDMETHOD.


  METHOD production_line.
    rv_production = 'Production line'.
  ENDMETHOD.
ENDCLASS.
