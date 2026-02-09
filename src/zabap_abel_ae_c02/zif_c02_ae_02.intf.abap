INTERFACE zif_c02_ae_02
 PUBLIC .

   TYPES: BEGIN OF ty_cust_addr,
           first_name TYPE string,
           last_name  TYPE string,
         END OF ty_cust_addr.

  METHODS:
    get_customer
      IMPORTING
                iv_cust_id             TYPE string
      RETURNING VALUE(rs_cust_address) TYPE ty_cust_addr.

ENDINTERFACE.
