CLASS zcl_c02_ae_friends_her DEFINITION
PUBLIC
  "FINAL
  CREATE PUBLIC. "PROTECTED. "PUBLIC .

  PUBLIC SECTION.

    METHODS get_friend_data.

  PROTECTED SECTION.

    DATA: my_attr TYPE string.

  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_C02_AE_FRIENDS_HER IMPLEMENTATION.


METHOD get_friend_data.

    DATA(lo_encap) = NEW zcl_c02_ae_friends( ).

    DATA(lo_friend) = NEW zcl_c02_ae_friends( ).

    lo_friend->warehouse = 'Main Warehouse'.

  ENDMETHOD.
ENDCLASS.
