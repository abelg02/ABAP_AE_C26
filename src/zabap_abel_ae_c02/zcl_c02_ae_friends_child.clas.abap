CLASS zcl_c02_ae_friends_child DEFINITION INHERITING FROM zcl_c02_ae_friends_her
 PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_private_data.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_C02_AE_FRIENDS_CHILD IMPLEMENTATION.


  METHOD get_private_data.

   data(lo_encap) = new zcl_c02_ae_friends_her( ).

   lo_encap->get_friend_data( ).

   me->my_attr = 'attr_child'.

   data(lo_friend) = new zcl_c02_ae_friends( ).

   lo_friend->warehouse = 'Child Warehouse'.

  ENDMETHOD.
ENDCLASS.
