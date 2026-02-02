CLASS zcl_lab_02_product_ag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS set_product
      IMPORTING iv_product TYPE matnr.

    METHODS set_creationdate
      IMPORTING iv_creation_date TYPE zdate.

  PRIVATE SECTION.
    DATA product        TYPE matnr.
    DATA creation_date TYPE zdate.
ENDCLASS.



CLASS zcl_lab_02_product_ag IMPLEMENTATION.

  METHOD set_product.
    product = iv_product.
  ENDMETHOD.

  METHOD set_creationdate.
    creation_date = iv_creation_date.
  ENDMETHOD.

ENDCLASS.

