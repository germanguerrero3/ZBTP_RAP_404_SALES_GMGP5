CLASS zcl_insert_data_sales_c404 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_sales_c404 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

 data: lt_sales type table of Zsales_gg,
       lt_items type table of Zitems_gg.

 " ******** Zsales_gg ********
    "fill internal table
    lt_sales = value #(
    ( id = '005638984K' email = 'LUIS.ROBERTS1@EMAIL.COM'  first_name = 'Luis'  last_name = 'Roberts1' country = 'USD' create_on = '20260624' delivery_date = '20260624' order_status = '10' image_url = 'https://d4.logaligroup.com' )
    ( id = '005638984K' email = 'JUAN.ROBERTS2@EMAIL.COM'  first_name = 'Juan'  last_name = 'Roberts2' country = 'USD' create_on = '20260624' delivery_date = '20260624' order_status = '10' image_url = 'https://d4.logaligroup.com' )
    ( id = '005638984K' email = 'PEDRO.ROBERTS3@EMAIL.COM' first_name = 'Pedro' last_name = 'Roberts3' country = 'USD' create_on = '20260624' delivery_date = '20260624' order_status = '10' image_url = 'https://d4.logaligroup.com' ) ).

    "Delete possible entries; insert new entries
    delete from Zsales_gg.
        out->write( 'antes!' ).
    insert Zsales_gg from table @lt_sales.

    if sy-subrc eq 0.
        out->write( |Acceso Categorias: { sy-dbcnt } registros insertados| ).
    endif.
    "Check result in console
    out->write( 'DONE!' ).

  ENDMETHOD.

ENDCLASS.
