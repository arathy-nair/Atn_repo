FUNCTION y_devops_fm.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(REL_OBJ) TYPE REF TO  Y_DEVOPS_CLASS
*"----------------------------------------------------------------------

  DATA wa TYPE ydevops_struct.

  "Branching logic to be applied here
  wa-branch = 'Master'.

  DATA: gcl_xml TYPE REF TO cl_xml_document.
  DATA: gv_xml  TYPE string.

  DATA(lv_string) = rel_obj->get_value( ). "--> gv_xml
  SPLIT lv_string AT '|' INTO wa-rel_no wa-rel_year wa-lead wa-scope_cnt.

  CALL TRANSFORMATION y_devops_st
             SOURCE release_details = wa
             RESULT XML gv_xml.

  CREATE OBJECT gcl_xml.

*Parses XML String to DOM
  CALL METHOD gcl_xml->parse_string
    EXPORTING
      stream = gv_xml.

*Display XML
  CALL METHOD gcl_xml->display.

ENDFUNCTION.
