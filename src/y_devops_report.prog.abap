*&---------------------------------------------------------------------*
*& Report  Y_DEVOPS_REPORT
*&
*&---------------------------------------------------------------------*
*&DevOps demo  - Arathy
*& 05/30/2018
*&---------------------------------------------------------------------*
REPORT y_devops_report.

SELECTION-SCREEN:BEGIN OF BLOCK blk1 WITH FRAME TITLE text-000.
PARAMETERS p_relno(2) TYPE c default 'R8'.
SELECTION-SCREEN:END OF BLOCK blk1.
" Changes start
CASE p_relno.
  WHEN 'R6'.
    DATA(lr_rel_r6) = NEW y_devops_class( p_rel_no = 'R6').
    CALL FUNCTION 'Y_DEVOPS_FM'
      EXPORTING
        rel_obj = lr_rel_r6.
  WHEN 'R7'.
    DATA(lr_rel_r7) = NEW y_devops_class( p_rel_no = 'R7').
    CALL FUNCTION 'Y_DEVOPS_FM'
      EXPORTING
        rel_obj = lr_rel_r7.
  WHEN 'R8'.
    DATA(lr_rel_r8) = NEW y_devops_class( p_rel_no = 'R8').
    CALL FUNCTION 'Y_DEVOPS_FM'
      EXPORTING
        rel_obj = lr_rel_r8.
  WHEN OTHERS.
    WRITE 'Enter a valid release no'.
ENDCASE.
