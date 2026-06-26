CLASS zcl_insert_data_sales_c404 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_INSERT_DATA_SALES_C404 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: lt_sales type table of Zsales_gg,
        lt_items type table of Zitems_gg.

 " ******** Zsales_gg ********
    "fill internal table
   lt_sales = value #(
    ( id = '005638984K' email = 'LUIS.ROBERTS1@EMAIL.COM'  first_name = 'Luis'  last_name = 'Roberts1' country = 'USD' create_on = '20260624' delivery_date = '20260624' order_status = '10' image_url = 'https://d4.logaligroup.com' )
    ( id = '2222222222' email = 'JUAN.ROBERTS2@EMAIL.COM'  first_name = 'Juan'  last_name = 'Roberts2' country = 'USD' create_on = '20260624' delivery_date = '20260624' order_status = '10' image_url = 'https://d4.logaligroup.com' )
    ( id = '3333333333' email = 'PEDRO.ROBERTS3@EMAIL.COM' first_name = 'Pedro' last_name = 'Roberts3' country = 'USD' create_on = '20260624' delivery_date = '20260624' order_status = '10' image_url = 'https://d4.logaligroup.com' ) ).

    "Delete possible entries; insert new entries
    delete from Zsales_gg.
    insert Zsales_gg from table @lt_sales.
    SELECT * FROM Zsales_gg INTO TABLE @lt_SALES.
    if sy-subrc eq 0.
        out->write( |Acceso sales: { sy-dbcnt } registros insertados| ).
    endif.
    "Check result in console
    out->write( 'DONE!' ).

" ******** ZITEMS_gg ********
    "fill internal table
    lt_items = value #(
    ( id = '005638984K' id_item = '10'  name = 'Producto1'  description = 'Material1' release_date = '20260620' discontinued_date = '20271231'
            price = '1000' currency_code = 'USD' height = '10' width = '20' depth = '30' quantity = '200' unit_of_measure = 'CM' )
    ( id = '005638984K' id_item = '20'  name = 'Producto2'  description = 'Material2' release_date = '20260622' discontinued_date = '20271231'
            price = '2000' currency_code = 'USD' height = '11' width = '21' depth = '31' quantity = '201' unit_of_measure = 'CM' )
    ( id = '005638984K' id_item = '30'  name = 'Producto3'  description = 'Material3' release_date = '20260623' discontinued_date = '20271231'
            price = '3000' currency_code = 'USD' height = '12' width = '22' depth = '32' quantity = '202' unit_of_measure = 'CM' )

    ( id = '2222222222' id_item = '10'  name = 'Producto4'  description = 'Material4' release_date = '20260620' discontinued_date = '20271231'
           price = '4000' currency_code = 'USD' height = '40' width = '50' depth = '60' quantity = '300' unit_of_measure = 'CM' )
    ( id = '2222222222' id_item = '20'  name = 'Producto5'  description = 'Material5' release_date = '20260622' discontinued_date = '20271231'
           price = '5000' currency_code = 'USD' height = '41' width = '51' depth = '61' quantity = '301' unit_of_measure = 'CM' )
    ( id = '2222222222' id_item = '30'  name = 'Producto6'  description = 'Material6' release_date = '20260623' discontinued_date = '20271231'
           price = '6000' currency_code = 'USD' height = '42' width = '52' depth = '62' quantity = '302' unit_of_measure = 'CM' )

    ( id = '3333333333' id_item = '10'  name = 'Producto7'  description = 'Material7' release_date = '20260620' discontinued_date = '20271231'
           price = '7000' currency_code = 'USD' height = '70' width = '80' depth = '90' quantity = '400' unit_of_measure = 'CM' )
    ( id = '3333333333' id_item = '20'  name = 'Producto8'  description = 'Material8' release_date = '20260622' discontinued_date = '20271231'
           price = '8000' currency_code = 'USD' height = '71' width = '81' depth = '91' quantity = '401' unit_of_measure = 'CM' )
    ( id = '3333333333' id_item = '30'  name = 'Producto9'  description = 'Material9' release_date = '20260623' discontinued_date = '20271231'
           price = '9000' currency_code = 'USD' height = '72' width = '82' depth = '92' quantity = '402' unit_of_measure = 'CM' ) ).

    "Delete possible entries; insert new entries
    delete from Zitems_gg.
    insert Zitems_gg from table @lt_items.
    SELECT * FROM Zitems_gg INTO TABLE @lt_items.
    if sy-subrc eq 0.
        out->write( |Acceso sales: { sy-dbcnt } registros insertados| ).
    endif.
    "Check result in console
    out->write( 'DONE!' ).


  ENDMETHOD.
ENDCLASS.
