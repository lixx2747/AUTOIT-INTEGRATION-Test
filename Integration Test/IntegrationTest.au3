#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <excel.au3>
#include <MsgBoxConstants.au3>
#include <AutoItConstants.au3>
#include <FormInfos.au3>



#=================================================================Variable Declaration===================================================
	 Global $Q1 = ""
	 Global $Q2 = ""
     Global $Q3 = ""
	 Global $Q4 = ""
	 Global $Q5 = ""
	 Global $Q6 = ""
	 Global $Q7 = ""
	 Global $Q8 = ""
	 Global $UDSresults = ""
#=================================================================Question Variables =====================================================
#======================================================================================Button and Control======================================================================






#======================================================================================Functions==================================================================================================

Func OpenForm2()
$Form2 = GUICreate("Form2", 1385, 938, 405, 27)
$Label1 = GUICtrlCreateLabel("MMI TEST (only available for vehicles with MMI interface)", 32, 16, 276, 17)
$Label2 = GUICtrlCreateLabel("Instruction I", 40, 48, 88, 24)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$Label3 = GUICtrlCreateLabel("- Enter the TMPS Menu in MMI", 40, 104, 181, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label4 = GUICtrlCreateLabel("Q1: Is there any information text or the option to store the tire pressure presented?", 64, 136, 478, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label5 = GUICtrlCreateLabel("Q2: Is there confirmation layer presented?", 64, 168, 249, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label6 = GUICtrlCreateLabel("Q3: Are the options 'Confirm' and 'Cancel' presented? wherr 'Cancel' is the default option?", 64, 200, 528, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label7 = GUICtrlCreateLabel("Instruction II ", 40, 272, 97, 24)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$Label8 = GUICtrlCreateLabel("- Start the vehicle", 40, 80, 105, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label9 = GUICtrlCreateLabel("- Press Confirm the reset the TPMS using MMI", 40, 304, 273, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label10 = GUICtrlCreateLabel("- Extract a new readout", 40, 328, 138, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label11 = GUICtrlCreateLabel("Q1: Is a confirmation of the TMPS reset presented in MMI and/or the dashboard for at least 2 seconds?", 64, 360, 605, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label12 = GUICtrlCreateLabel("Q2: Is the TMPS reset?", 64, 392, 139, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Checkbox1 = GUICtrlCreateCheckbox("YES", 696, 136, 97, 17)
$Checkbox2 = GUICtrlCreateCheckbox("NO", 800, 136, 97, 17)
$Checkbox3 = GUICtrlCreateCheckbox("NOT TESTABLE", 904, 136, 97, 17)
$Checkbox4 = GUICtrlCreateCheckbox("NOT TESTED", 1024, 136, 97, 17)
$Checkbox5 = GUICtrlCreateCheckbox("N/A", 1152, 136, 97, 17)
$Label13 = GUICtrlCreateLabel("Note: Singular Choice!!!!!! It takes approximately 90 seconds to get UDS code. Please Wait...", 48, 824, 536, 17)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$Checkbox6 = GUICtrlCreateCheckbox("YES", 696, 168, 97, 17)
$Checkbox7 = GUICtrlCreateCheckbox("NO", 800, 168, 97, 17)
$Checkbox8 = GUICtrlCreateCheckbox("NOT TESTABLE", 904, 168, 97, 17)
$Checkbox9 = GUICtrlCreateCheckbox("NOT TESTED", 1024, 168, 97, 17)
$Checkbox10 = GUICtrlCreateCheckbox("N/A", 1152, 168, 97, 17)
$Checkbox11 = GUICtrlCreateCheckbox("YES", 696, 200, 97, 17)
$Checkbox12 = GUICtrlCreateCheckbox("NO", 800, 200, 97, 17)
$Checkbox13 = GUICtrlCreateCheckbox("NOT TESTABLE", 904, 200, 97, 17)
$Checkbox14 = GUICtrlCreateCheckbox("NOT TESTED", 1024, 200, 97, 17)
$Checkbox15 = GUICtrlCreateCheckbox("N/A", 1152, 200, 97, 17)
$Checkbox16 = GUICtrlCreateCheckbox("YES", 696, 360, 97, 17)
$Checkbox17 = GUICtrlCreateCheckbox("NO", 800, 360, 97, 17)
$Checkbox18 = GUICtrlCreateCheckbox("NOT TESTABLE", 912, 360, 97, 17)
$Checkbox19 = GUICtrlCreateCheckbox("NOT TESTED", 1024, 360, 97, 17)
$Checkbox20 = GUICtrlCreateCheckbox("N/A", 1152, 360, 97, 17)
$Checkbox21 = GUICtrlCreateCheckbox("YES", 696, 392, 97, 17)
$Checkbox22 = GUICtrlCreateCheckbox("NO", 800, 392, 97, 17)
$Checkbox23 = GUICtrlCreateCheckbox("NOT TESTABLE", 912, 392, 97, 17)
$Checkbox24 = GUICtrlCreateCheckbox("NOT TESTED", 1024, 392, 97, 17)
$Checkbox25 = GUICtrlCreateCheckbox("N/A", 1152, 392, 97, 17)
$OutputToExcel = GUICtrlCreateButton("Output to Excel", 1064, 880, 155, 25)
$Label14 = GUICtrlCreateLabel("Instruction III", 40, 448, 98, 24)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$Label15 = GUICtrlCreateLabel("-Turn Ignition off", 40, 496, 97, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label16 = GUICtrlCreateLabel("- Reset TPMS from MMI", 40, 520, 145, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label17 = GUICtrlCreateLabel("Q1: Is TMPS menu accssible?", 64, 552, 182, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label18 = GUICtrlCreateLabel("Instruction IV", 40, 600, 99, 24)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$Label19 = GUICtrlCreateLabel("- Drive at 10kph and try to rest TMPS from MMI while driving", 40, 640, 352, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label20 = GUICtrlCreateLabel("Q1: Is TMPS menu accessible?", 64, 680, 190, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Label21 = GUICtrlCreateLabel("Q2: Is prevent Calibration sent on CAN", 64, 712, 229, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$Checkbox26 = GUICtrlCreateCheckbox("YES", 696, 552, 97, 17)
$Checkbox27 = GUICtrlCreateCheckbox("NO", 800, 552, 97, 17)
$Checkbox28 = GUICtrlCreateCheckbox("NOT TESTABLE", 912, 552, 97, 17)
$Checkbox29 = GUICtrlCreateCheckbox("NOT TESTED", 1024, 552, 97, 17)
$Checkbox30 = GUICtrlCreateCheckbox("N/A", 1152, 552, 97, 17)
$Checkbox31 = GUICtrlCreateCheckbox("YES", 696, 688, 97, 17)
$Checkbox32 = GUICtrlCreateCheckbox("NO", 800, 688, 97, 17)
$Checkbox33 = GUICtrlCreateCheckbox("NOT TESTABLE", 912, 688, 97, 17)
$Checkbox34 = GUICtrlCreateCheckbox("NOT TESTABLE", 1024, 688, 97, 17)
$Checkbox35 = GUICtrlCreateCheckbox("N/A", 1152, 688, 97, 17)
$Checkbox36 = GUICtrlCreateCheckbox("YES", 696, 720, 97, 17)
$Checkbox37 = GUICtrlCreateCheckbox("NO", 800, 720, 97, 17)
$Checkbox38 = GUICtrlCreateCheckbox("NOT TESTABLE", 912, 720, 97, 17)
$Checkbox39 = GUICtrlCreateCheckbox("NOT TESTED", 1024, 720, 97, 17)
$Checkbox40 = GUICtrlCreateCheckbox("N/A", 1152, 720, 97, 17)
$Next = GUICtrlCreateButton("Next", 1248, 880, 75, 25)
GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
$GetUDSCode = GUICtrlCreateButton("Get UDS Code", 944, 880, 91, 25)
GUISetState(@SW_SHOW)
EndFunc


#===============================================================================================Form 2 Declaration=========================================================================================================
Func OpenContentForm()
    $Content = GUICreate("Content", 615, 437, 321, 203)
    $Label1 = GUICtrlCreateLabel("Content", 264, 40, 61, 33)
    GUICtrlSetFont(-1, 20, 800, 0, "Niagara Solid")
    $MMI = GUICtrlCreateButton("MMI Test", 24, 96, 75, 25)
    Global $MMIStatus = GUICtrlCreateLabel("Status: Not Started", 120, 104, 94, 17)
    GUISetState(@SW_SHOW)
EndFunc




#===============================================================================================Form 3 Declaration==========================================================================================================

Func CheckAnswers()
	 if GUICtrlRead($Checkbox1) = 1 Then $Q1 = "YES"
	 if GUICtrlRead($Checkbox2) = 1 Then $Q1 = "NO"
	 if GUICtrlRead($Checkbox3) = 1 Then $Q1 = "NOT TESTABLE"
	 if GUICtrlRead($Checkbox4) = 1 Then $Q1 = "NOT TESTED"
	 if GUICtrlRead($Checkbox5) = 1 Then $Q1 = "NOT APPLICABLE"

	 if GUICtrlRead($Checkbox6) = 1 Then $Q2 = "YES"
	 if GUICtrlRead($Checkbox7) = 1 Then $Q2 = "NO"
	 if GUICtrlRead($Checkbox8) = 1 Then $Q2 = "NOT TESTABLE"
	 if GUICtrlRead($Checkbox9) = 1 Then $Q2 = "NOT TESTED"
	 if GUICtrlRead($Checkbox10) = 1 Then $Q2 = "NOT APPLICABLE"

	 if GUICtrlRead($Checkbox11) = 1 Then $Q3 = "YES"
	 if GUICtrlRead($Checkbox12) = 1 Then $Q3 = "NO"
	 if GUICtrlRead($Checkbox13) = 1 Then $Q3 = "NOT TESTABLE"
	 if GUICtrlRead($Checkbox14) = 1 Then $Q3 = "NOT TESTED"
	 if GUICtrlRead($Checkbox15) = 1 Then $Q3 = "NOT APPLICABLE"

	 if GUICtrlRead($Checkbox16) = 1 Then $Q4 = "YES"
	 if GUICtrlRead($Checkbox17) = 1 Then $Q4 = "NO"
	 if GUICtrlRead($Checkbox18) = 1 Then $Q4 = "NOT TESTABLE"
	 if GUICtrlRead($Checkbox19) = 1 Then $Q4 = "NOT TESTED"
	 if GUICtrlRead($Checkbox20) = 1 Then $Q4 = "NOT APPLICABLE"

	 if GUICtrlRead($Checkbox21) = 1 Then $Q5 = "YES"
	 if GUICtrlRead($Checkbox22) = 1 Then $Q5 = "NO"
	 if GUICtrlRead($Checkbox23) = 1 Then $Q5 = "NOT TESTABLE"
	 if GUICtrlRead($Checkbox24) = 1 Then $Q5 = "NOT TESTED"
	 if GUICtrlRead($Checkbox25) = 1 Then $Q5 = "NOT APPLICABLE"

     if GUICtrlRead($Checkbox26) = 1 Then $Q6 = "YES"
	 if GUICtrlRead($Checkbox27) = 1 Then $Q6 = "NO"
	 if GUICtrlRead($Checkbox28) = 1 Then $Q6 = "NOT TESTABLE"
	 if GUICtrlRead($Checkbox29) = 1 Then $Q6 = "NOT TESTED"
	 if GUICtrlRead($Checkbox30) = 1 Then $Q6 = "NOT APPLICABLE"

	 if GUICtrlRead($Checkbox31) = 1 Then $Q7 = "YES"
	 if GUICtrlRead($Checkbox32) = 1 Then $Q7 = "NO"
	 if GUICtrlRead($Checkbox33) = 1 Then $Q7 = "NOT TESTABLE"
	 if GUICtrlRead($Checkbox34) = 1 Then $Q7 = "NOT TESTED"
	 if GUICtrlRead($Checkbox35) = 1 Then $Q7 = "NOT APPLICABLE"

     if GUICtrlRead($Checkbox36) = 1 Then $Q8 = "YES"
	 if GUICtrlRead($Checkbox37) = 1 Then $Q8 = "NO"
	 if GUICtrlRead($Checkbox38) = 1 Then $Q8 = "NOT TESTABLE"
	 if GUICtrlRead($Checkbox39) = 1 Then $Q8 = "NOT TESTED"
	 if GUICtrlRead($Checkbox40) = 1 Then $Q8 = "NOT APPLICABLE"
EndFunc

Func OutputtoExcel()

     Global $tWorkbook = "C:\Users\NIRA\Desktop\IntegrationExcel\updated_TEST_file.xlsx"
	 Global $oExcel_1 = _Excel_Open()
	 Global $pWorkBook = _Excel_BookOpen($oExcel_1,$tWorkbook)
	 WinActive($pWorkBook)
	 _Excel_RangeWrite($pWorkBook,6,$Q1,"G6")
	 _Excel_RangeWrite($pWorkBook,6,$Q2,"G8")
	 _Excel_RangeWrite($pWorkBook,6,$Q3,"G9")
	 _Excel_RangeWrite($pWorkBook,6,$Q4,"G11")
	 _Excel_RangeWrite($pWorkBook,6,$Q5,"G12")
     _Excel_RangeWrite($pWorkBook,6,$Q6,"G16")
	 _Excel_RangeWrite($pWorkBook,6,$Q7,"G18")
	 _Excel_RangeWrite($pWorkBook,6,$Q8,"G19")
	 _Excel_RangeWrite($pWorkBook,6,$UDSresults,"I12")
	 _Excel_BookSaveAs($pWorkBook,"C:\Users\NIRA\Desktop\IntegrationExcel\updated_TEST_file")
	 MsgBox("0","Congrats,you are almost done! ","Updated Excel File has been saved to following directory: C:\Users\NIRA\Desktop\IntegrationExcel AND if you press 'Next', thing will be better!")


	 CheckProgressMMI()
EndFunc

Func UpdateContentFormDone()
	 GUIDelete($Content)
	 $Content = GUICreate("Content", 615, 437, 321, 203)
     $Label1 = GUICtrlCreateLabel("Content", 264, 40, 61, 33)
     GUICtrlSetFont(-1, 20, 800, 0, "Niagara Solid")
     $MMI = GUICtrlCreateButton("MMI Test", 24, 96, 75, 25)
     Global $MMIStatus = GUICtrlCreateLabel("Status: Done!", 120, 104, 94, 17)
     GUISetState(@SW_SHOW)
	 MsgBox("0","Congrats ","MMI tests are been done! ")

EndFunc

Func UpdateContentFormInProgress()
	 GUIDelete($Content)
	 $Content = GUICreate("Content", 615, 437, 321, 203)
     $Label1 = GUICtrlCreateLabel("Content", 264, 40, 61, 33)
     GUICtrlSetFont(-1, 20, 800, 0, "Niagara Solid")
     $MMI = GUICtrlCreateButton("MMI Test", 24, 96, 75, 25)
     Global $MMIStatus = GUICtrlCreateLabel("Status: In Progress", 120, 104, 94, 17)
     GUISetState(@SW_SHOW)
	 MsgBox("0","Information","MMI TEST still in progress")


EndFunc

Func CheckProgressMMI()
    if $Q1 <> "" and $Q2 <> "" and $Q3 <> "" and $Q4 <> "" and  $Q5 <> "" and $Q6 <> "" and $Q7 <> "" and $Q8 <> ""  Then
	     UpdateContentFormDone()
    Else
		 UpdateContentFormInProgress()
    EndIf
EndFunc

Func CloseForm2()
	if $Q1 <> "" and $Q2 <> "" and $Q3 <> "" and $Q4 <> "" and  $Q5 <> "" and $Q6 <> "" and $Q7 <> "" and $Q8 <> "" then  GUIDelete($Form2)
EndFunc

Func OpenMM6()
	Run("C:\wtools\MM6X.EXE" & " " & "C:\MT\EMPTY_TEMPLATE\PHASECHANGE\UNKNOWNPROJECT\UNKNOWNPROJECT.MM6" & "")
	Sleep(500)
EndFunc

Func CreateNewMM6File()
	ControlFocus("MM6X Version 5.97 SR4 © Robert Bosch GmbH CC-AS/EST4 1999-2018","","AfxFrameOrView140s1")
    sleep(1500)
    Send("{LCTRL down}{n down}{LCTRL up}{n up}")
    sleep(500)
    ControlFocus("New Project ...   (base directory: <c:\mt>)","","Edit3")
    Global $MM6_File_Name = "temp_project_" & @YEAR & "_" & @Mon & "_" & @MDAY & "__" & @HOUR & "_" & @MIN & "_" & @SEC
    ControlSetText("New Project ...   (base directory: <c:\mt>)","","Edit3",$MM6_File_Name)
	sleep(300)
    ControlClick ("New Project ...   (base directory: <c:\mt>)", "", "Button7")
EndFunc

Func InstallApplFile()
	sleep(1000)
    ControlClick ("Add Files To The Project ", "", "Button6")
    sleep(500)
    ControlFocus("select ApplicationContainer ZIP file","","DirectUIHWND2")
    sleep(500)
    ControlSetText("select ApplicationContainer ZIP file","","Edit1","ApplContainer_BB80376_V0405_ECC_CSW_ECC_GladEmuOnGladF021_W_XCP.appl.zip")
    sleep(1000)
    Send("{ENTER}")
    sleep(1000)
	ControlFocus("Add Files To The Project ","","Button2")
	ControlClick("Add Files To The Project ","","Button2")
EndFunc

Func InstrumentSelection_1610()

    sleep(500)
	ControlFocus("Hardware Configuration (XCP)","","Button1")
    sleep(200)
    ControlClick("Hardware Configuration (XCP)","","Button10")
    sleep(200)
    ControlClick("Hardware Configuration (XCP)","","ComboBox1")
    sleep(200)
    Send("{UP}")
    sleep(200)
    ControlFocus("Hardware Configuration (XCP)","","Static8")
    sleep(200)
    ControlClick("Hardware Configuration (XCP)","","Static8")
    sleep(200)
    Send("{TAB}")
    sleep(200)
    Send("{TAB}")
    sleep(200)
    Send("{TAB}")
    sleep(200)
    Send("{TAB}")
    sleep(200)
    Send("{TAB}")
    sleep(200)
    Send("{TAB}")
    sleep(200)
    Send("{DOWN}")
    sleep(200)
    Send("{DOWN}")
    sleep(200)
    Send("{DOWN}")
    sleep(200)
    Send("{ENTER}")
EndFunc

Func SignalSelection()
	Send("{DOWN}")
    sleep(100)
    ControlClick("Signal Selection (XCP)","","Button6")
    sleep(100)
    Send("{TAB}")
	sleep(10)
    Send("{TAB}")
	sleep(10)
    Send("{TAB}")
	sleep(10)
    Send("{TAB}")
	sleep(10)
    Send("{ENTER}")
    sleep(10000)
    Send("{LCTRL down}{f down}{LCTRL up}{f up}")
EndFunc

Func FindDesiredSignal()
	sleep(100)
	ControlFocus("SelectX - Filter Signalname","","Edit1")
    ControlSetText("SelectX - Filter Signalname","","Edit1","ls_niraDebugEn")
    sleep(100)
    ControlFocus("SelectX - Filter Signalname","","Button10")
    ControlClick("SelectX - Filter Signalname","","Button10")
    sleep(100)
	ControlFocus("SelectX - Filter Signalname","","Button9")
    ControlClick("SelectX - Filter Signalname","","Button9")
    sleep(100)
	Send("{LCTRL down}{LSHIFT down}{INSERT down}{LCTRL up}{LSHIFT up}{INSERT up}")
    sleep(100)
    Send("{LALT down}{F4 down}{LALT up}{F4 up}")
    sleep(100)
	ControlFocus("SelectX V3.30 SR6","","Button1")
	ControlClick("SelectX V3.30 SR6","","Button1")
	sleep(200)
	ControlFocus("Signal Selection by SelectX","","Button6")
	ControlClick("Signal Selection by SelectX","","Button6")
	sleep(200)
	ControlFocus("Signal Selection (XCP)","","Button32")
	ControlClick("Signal Selection (XCP)","","Button32")
	Send("1000")
    sleep(300)
	ControlFocus("Measure Configuration (XCP)","","Button33")
    ControlClick("Measure Configuration (XCP)","","Button33")
    sleep(400)
    ControlFocus("Visualization Configuration","","Button5")
    ControlClick("Visualization Configuration","","Button5")
EndFunc

Func MM6Preparation()
	OpenMM6()
	CreateNewMM6File()
	InstallApplFile()
	InstrumentSelection_1610()
	SignalSelection()
	FindDesiredSignal()
EndFunc

Func AccesstoTKWinX()
	 ControlFocus("MM6X Version 5.97 SR4 © Robert Bosch GmbH CC-AS/EST4 1999-2018","","AfxFrameOrView140s1")
	 Send("{d}")
	 sleep(1000)
     ControlFocus("TK_WinX Diagnostics <TK_WINX Version 3.6.1.118 available>","","ComboBox1")
     ControlClick("TK_WinX Diagnostics <TK_WINX Version 3.6.1.118 available>","","ComboBox1")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{ENTER}")
     sleep(200)
     Send("{d}")
     sleep(10000)
     ControlFocus("Fault Data Interpretation","","TLMDScrollBox1")
     sleep(1000)
     ControlClick("Fault Data Interpretation","","TLMDScrollBox1")
     sleep(3000)
     Send("{LALT down}{F4 down}{LALT up}{F4 up}")
     sleep(1000)
     ControlFocus("TK_WinX Version 3.6.1","","TToolBar1")
     #ControlClick("TK_WinX Version 3.6.1","","TToolBar1")
     sleep(2000)
EndFunc

Func CustomerModeTKwinX()
	 Send("{LALT down}{d down}{LALT up}{d up}")
     sleep(2000)
     Send("{LALT down}{c down}{LALT up}{c up}")
     sleep(1000)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{DOWN}")
     sleep(150)
     Send("{ENTER}")
EndFunc

Func Input22Service()
    sleep(3000)
    ControlFocus("Customer Mode","","TLMDMemo2")
    sleep(1000)
	Send("22fd10")
	Send("{ENTER}")
EndFunc

Func Output22Service()
	sleep(3000)
	ControlFocus("Customer Mode","","TLMDMemo1")
	ControlClick("Customer Mode","","TLMDMemo1")
	Send("{LCTRL down}{a down}{LCTRL up}{a up}")
	sleep(500)
	Send("{LCTRL down}{c down}{LCTRL up}{c up}")
	sleep(100)
	run("notepad.exe")
	sleep(500)
	Send("{LCTRL down}{v down}{LCTRL up}{v up}")
	$UDSresults =  WinGetText("[ACTIVE]", "")
	sleep(100)
	send("{LCTRL down}{s down}{LCTRL up}{s up}")
	sleep(500)
	Global $UDS_file_name = "C:\MT\EMPTY_TEMPLATE\PHASECHANGE\" & "UDS_readout" & @YEAR & "_" & @Mon & "_" & @MDAY & "__" & @HOUR & "_" & @MIN & "_" & @SEC
	send($UDS_file_name)
	sleep(400)
	send("{ENTER}")
	sleep(300)
    WinClose("[CLASS:Notepad]","")
	sleep(100)
	ControlFocus("TK_WinX Version 3.6.1","","TToolBar1")
	ControlClick("TK_WinX Version 3.6.1","","TToolBar1")
	sleep(1000)
	Send("{LALT down}{F4 down}{LALT up}{F4 up}")


EndFunc

Func GetUDSCodeFromMM6()
		MM6Preparation()
		AccesstoTKWinX()
		CustomerModeTKwinX()
	    Input22Service()
	    Output22Service()
		CheckProgressMMI()
EndFunc

Func OpenTKwinXFromWindows()
	 Run("C:\TK_WinX\TK_WinX.exe")
EndFunc

Func CreateTKwinXProject_ESP90()
	 sleep(4000)
	 send("{LALT}")
	 sleep(100)
	 send("{ENTER}")
	 sleep(100)
	 send("{n}")
	 sleep(2000)
	 ControlFocus("Create New Project","","TLMDListComboBox2")
	 ControlClick("Create New Project","","TLMDListComboBox2")
	 sleep(500)
	 send("{LCTRL down}{a down}{LCTRL up}{a up}")
	 sleep(200)
	 Global $TKwinX_File_Name = "tk_project_" & @YEAR & "_" & @Mon & "_" & @MDAY & "__" & @HOUR & "_" & @MIN & "_" & @SEC
	 send($TKwinX_File_Name)
	 ControlFocus("Create New Project","","TLMDButton2")
	 ControlClick("Create New Project","","TLMDButton2")
	 sleep(500)
	 ControlFocus("HW Configuration","","TLMDButton1")
	 ControlClick("HW Configuration","","TLMDButton1")
	 sleep(200)
	 ControlFocus("SW Configuration","","TLMDButton10")
	 ControlClick("SW Configuration","","TLMDButton10")
	 sleep(200)
	 ControlFocus("Open","","Edit1")
	 Send("C:\Users\NIRA\Desktop\333\ApplContainer_BB80376_V0405_ECC_CSW_ECC_GladEmuOnGladF021_W_XCP.appl.zip")
     sleep(100)
	 ControlFocus("Open","","Button2")
	 ControlClick("Open","","Button2")
     sleep(100)
	 ControlFocus("SW Configuration","","TLMDButton15")
	 ControlClick("SW Configuration","","TLMDButton15")
EndFunc

Func GetUDSCodeFomrWindows()
	 OpenTKwinXFromWindows()
	 CreateTKwinXProject_ESP90()
	 sleep(10000)
	 Input22Service()
	 Output22Service()

EndFunc

