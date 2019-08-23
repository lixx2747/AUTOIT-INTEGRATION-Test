#include <IntegrationTest.au3>
#include <FormInfos.au3>

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $GettingStart
			OpenContentForm()
		Case $MMI
			OpenForm2()
		Case $GetUDSCode
			GetUDSCodeFomrWindows()
		Case $OutputToExcel
			CheckAnswers()
			OutputtoExcel()
		Case $Next
			CheckProgressMMI()
			CloseForm2()
	EndSwitch
WEnd

