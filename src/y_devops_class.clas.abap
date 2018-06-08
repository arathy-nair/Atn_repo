class Y_DEVOPS_CLASS definition
  public
  final
  create public .

public section.

  data REL_NO type STRING .
  data REL_YEAR type STRING .
  data LEAD type STRING .
  data SCOPE_CNT type STRING .

  methods CONSTRUCTOR
    importing
      !P_REL_NO type STRING .
  methods GET_VALUE
    returning
      value(P_DETAILS) type STRING .
protected section.
private section.
ENDCLASS.



CLASS Y_DEVOPS_CLASS IMPLEMENTATION.


  METHOD constructor.
    CASE p_rel_no.
      WHEN 'R6'.
        rel_no = 'R6'.
        rel_year = '2018'.
        lead = 'Anju'.
        scope_cnt = '13'.
      WHEN 'R7'.
        rel_no = 'R7'.
        rel_year = '2018'.
        lead = 'Sravan'.
        scope_cnt = '5'.
      WHEN 'R8'.
        rel_no = 'R8'.
        rel_year = '2018'.
        lead = 'Arathy'.
        scope_cnt = '9'.
    ENDCASE.
  ENDMETHOD.


  method GET_VALUE.
    concatenate rel_no '|' rel_year '|' lead '|' scope_cnt  into p_details.
  endmethod.
ENDCLASS.
