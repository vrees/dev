VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} TurnierForm 
   Caption         =   "TurnierForm"
   ClientHeight    =   7305
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9780
   OleObjectBlob   =   "TurnierForm.frx":0000
   StartUpPosition =   1  'Fenstermitte
End
Attribute VB_Name = "TurnierForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Dim plan4(1 To 3, 1 To 2, 1 To 2) As Integer
Dim plan5(1 To 5, 1 To 2, 1 To 2) As Integer
Dim plan6(1 To 5, 1 To 3, 1 To 2) As Integer

Sub DemoMannschaftenErzeugenX(ByVal sheetTeams As String)
    Sheets(sheetTeams).Select
    
    Range("B2").Select
    ActiveCell.FormulaR1C1 = "Team01"
    Range("B3").Select
    ActiveCell.FormulaR1C1 = "Team02"
    Range("B2:B3").Select
    Selection.AutoFill Destination:=Range("B2:B25"), Type:=xlFillDefault
    Range("C2").Select
    ActiveCell.FormulaR1C1 = "OrtA"
    Range("C3").Select
    ActiveCell.FormulaR1C1 = "OrtB"
    Range("C2:C3").Select
    Selection.AutoFill Destination:=Range("C2:C25"), Type:=xlFillDefault
End Sub


Sub ArbeitblaetterErzeugen()
    Workbooks.Add       ' neue Arbeitsmappe öffnen
    
    Sheets("Tabelle1").Select
    Sheets("Tabelle1").Name = "Teams Samstag"
    
    Sheets("Teams Samstag").Copy After:=Sheets(1)
    Sheets("Teams Samstag (2)").Name = "Gruppen Samstag"
    
    Sheets("Teams Samstag").Copy After:=Sheets(2)
    Sheets("Teams Samstag (2)").Name = "Spielplan Samstag"
    
    Sheets("Teams Samstag").Select
    ActiveCell.FormulaR1C1 = "Nummer"
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Nr."
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "Name"
    Range("C1").Select
    ActiveCell.FormulaR1C1 = "Ort"
    Columns("A:A").ColumnWidth = 10
    Columns("B:B").ColumnWidth = 30
    Columns("C:C").ColumnWidth = 20
    Rows("1:1").Select
    Selection.Font.Bold = True
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "1"
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "2"
    Range("A2:A3").Select
    Selection.AutoFill Destination:=Range("A2:A25"), Type:=xlFillDefault
    Range("A1").Select
    
    Sheets("Gruppen Samstag").Select
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Gruppen-Name"
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "Mannschafts.Name"
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "Mannschaftsname"
    Range("C1").Select
    ActiveCell.FormulaR1C1 = "Ort"
    Columns("A:A").ColumnWidth = 15
    Columns("B:B").ColumnWidth = 26
    Columns("C:C").ColumnWidth = 20
    Rows("1:1").Select
    Selection.Font.Bold = True
    Range("A1").Select
    
    Sheets("Spielplan Samstag").Select
    Rows("1:1").Select
    Selection.Font.Bold = True
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Zeit"
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "Gruppe"
    Range("C1").Select
    ActiveCell.FormulaR1C1 = "Mannschaft 1"
    Range("D1").Select
    ActiveCell.FormulaR1C1 = ":"
    Range("E1").Select
    ActiveCell.FormulaR1C1 = "Mannschaft 2"
    Range("F1").Select
    ActiveCell.FormulaR1C1 = "Platz"
    Range("G1").Select
    ActiveCell.FormulaR1C1 = "Ergebnis"
    Columns("C:C").ColumnWidth = 22
    Columns("D:D").ColumnWidth = 3
    Columns("E:E").ColumnWidth = 22
    
    Range("A:A,B:B,D:D,F:F,G:G").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .ShrinkToFit = False
        .MergeCells = False
    End With

    Range("A1").Select
    Sheets("Teams Samstag").Copy After:=Sheets(3)
    Sheets("Teams Samstag (2)").Name = "Teams Herren Sonntag"
    
    Sheets("Gruppen Samstag").Copy After:=Sheets(4)
    Sheets("Gruppen Samstag (2)").Name = "Gruppen Herren Sonntag"
    
    Sheets("Spielplan Samstag").Copy After:=Sheets(5)
    Sheets("Spielplan Samstag (2)").Name = "Spielplan Herren Sonntag"
    
    Sheets("Teams Herren Sonntag").Copy After:=Sheets(6)
    Sheets("Teams Herren Sonntag (2)").Name = "Teams Damen Sonntag"
    
    Sheets("Gruppen Herren Sonntag").Copy After:=Sheets(7)
    Sheets("Gruppen Herren Sonntag (2)").Name = "Gruppen Damen Sonntag"
    
    Sheets("Spielplan Herren Sonntag").Copy After:=Sheets(8)
    Sheets("Spielplan Herren Sonntag (2)").Name = "Spielplan Damen Sonntag"
    
    Sheets("Tabelle2").Name = "Einstellungen"
    Sheets("Einstellungen").Select
    
    Rows("1:1").Select
    Selection.Font.Bold = True
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Bezeichnung"
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "Wert"
    Columns("A:A").ColumnWidth = 50
    Columns("B:B").ColumnWidth = 50
    
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "Anzahl Mannschaften Samstag"
    Range("B2").Select
    ActiveCell.FormulaR1C1 = "0"
    
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "Anzahl Herren-Mannschaften Sonntag"
    Range("B3").Select
    ActiveCell.FormulaR1C1 = "0"
    
    Range("A4").Select
    ActiveCell.FormulaR1C1 = "Anzahl Damen-Mannschaften Sonntag"
    Range("B4").Select
    ActiveCell.FormulaR1C1 = "0"
    
    Range("A7").Select
    ActiveCell.FormulaR1C1 = "Überschrift Gruppeneinteilung Samstag"
    Range("B7").Select
    ActiveCell.FormulaR1C1 = "Gruppeneinteilung für Samstag, den 12.12.1998"
    
    Range("A8").Select
    ActiveCell.FormulaR1C1 = "Überschrift Spielplan Samstag"
    Range("B8").Select
    ActiveCell.FormulaR1C1 = "Spielplan am Samstag, den 12.12.1998"
    
    Range("A9").Select
    ActiveCell.FormulaR1C1 = "Überschrift Gruppeneinteilung Sonntag"
    Range("B9").Select
    ActiveCell.FormulaR1C1 = "Gruppeneinteilung für Sonnstag, den 13.12.1998"
    
    Range("A10").Select
    ActiveCell.FormulaR1C1 = "Überschrift Spielplan Sonntag"
    Range("B10").Select
    ActiveCell.FormulaR1C1 = "Spielplan am Sonnstag, den 13.12.1998"
End Sub

Private Sub CommandButton1_Click()
    Call ArbeitblaetterErzeugen

End Sub
Private Sub DemoMannschaftenErzeugen_Click()

Dim iAnzahlTeams As Integer
Dim iGruppenGroesse As Integer
Dim iGruppenAnzahl As Integer
Dim iBeginnStunde As Integer, iBeginnMinute As Integer, iSpieldauer As Integer
Dim sheetTeams As String, sheetGruppen As String, sheetSpiele As String

Call GetValues(sheetTeams, sheetGruppen, sheetSpiele, iAnzahlTeams, iGruppenAnzahl, iGruppenGroesse, iBeginnStunde, iBeginnMinute, iSpieldauer)
Call DemoMannschaftenErzeugenX(sheetTeams)

End Sub

Public Function HoleNaechstesTeam(ByVal iAnzahlTeams As Integer, ByVal iTeam As Integer, _
ByVal sheetTeams As String) As Integer
    Dim zufall, iPos, yPos, iVal As Integer
    
    zufall = rnd() * iAnzahlTeams + 1
    yPos = 0
    
    For iPos = 1 To zufall
        Do
            yPos = yPos + 1
            If yPos > iAnzahlTeams Then yPos = 1
            
            iVal = Sheets(sheetTeams).Cells(yPos + 1, 4).Value
        Loop While iVal <> 0
    Next iPos
        Sheets(sheetTeams).Cells(yPos + 1, 4).Value = iTeam

    HoleNaechstesTeam = yPos
End Function

Private Sub DoGruppenEinteilen(ByVal sheetTeams As String, ByVal sheetGruppen As String, _
iAnzahlTeams As Integer, iGruppenAnzahl As Integer, _
iGruppenGroesse As Integer)

Dim TeamName, TeamOrt As String
Dim GrNr, GrPos, TeamNr, yPos, iTeam As Integer

Sheets(sheetTeams).Columns(4).ClearContents

Sheets(sheetGruppen).Select

iTeam = 0

For GrNr = 1 To iGruppenAnzahl
    For GrPos = 1 To iGruppenGroesse
        iTeam = iTeam + 1
        TeamNr = HoleNaechstesTeam(iAnzahlTeams, iTeam, sheetTeams)
        TeamName = Sheets(sheetTeams).Cells(TeamNr + 1, 2).Value
        TeamOrt = Sheets(sheetTeams).Cells(TeamNr + 1, 3).Value

        yPos = (GrNr - 1) * (iGruppenGroesse + 1) + GrPos + 1
        Cells(yPos, 2).Value = TeamName
        Cells(yPos, 3).Value = TeamOrt
    Next GrPos
Next GrNr

End Sub

Private Sub GruppenEinteilen_Click()

Dim iAnzahlTeams As Integer
Dim iGruppenGroesse As Integer
Dim iGruppenAnzahl As Integer
Dim iBeginnStunde As Integer, iBeginnMinute As Integer, iSpieldauer As Integer
Dim sheetTeams As String, sheetGruppen As String, sheetSpiele As String

Call GetValues(sheetTeams, sheetGruppen, sheetSpiele, iAnzahlTeams, iGruppenAnzahl, iGruppenGroesse, iBeginnStunde, iBeginnMinute, iSpieldauer)
Call DoGruppenEinteilen(sheetTeams, sheetGruppen, iAnzahlTeams, iGruppenAnzahl, iGruppenGroesse)

End Sub

Private Sub SpieleErzeugen_Click()

plan4(1, 1, 1) = 1
plan4(1, 1, 2) = 2
plan4(1, 2, 1) = 3
plan4(1, 2, 2) = 4
plan4(2, 1, 1) = 1
plan4(2, 1, 2) = 3
plan4(2, 2, 1) = 2
plan4(2, 2, 2) = 4
plan4(3, 1, 1) = 1
plan4(3, 1, 2) = 4
plan4(3, 2, 1) = 2
plan4(3, 2, 2) = 3

plan5(1, 1, 1) = 1
plan5(1, 1, 2) = 2
plan5(1, 2, 1) = 3
plan5(1, 2, 2) = 4
plan5(2, 1, 1) = 1
plan5(2, 1, 2) = 3
plan5(2, 2, 1) = 2
plan5(2, 2, 2) = 5
plan5(3, 1, 1) = 1
plan5(3, 1, 2) = 5
plan5(3, 2, 1) = 2
plan5(3, 2, 2) = 4
plan5(4, 1, 1) = 1
plan5(4, 1, 2) = 4
plan5(4, 2, 1) = 3
plan5(4, 2, 2) = 5
plan5(5, 1, 1) = 2
plan5(5, 1, 2) = 3
plan5(5, 2, 1) = 4
plan5(5, 2, 2) = 5

plan6(1, 1, 1) = 1
plan6(1, 1, 2) = 2
plan6(1, 2, 1) = 3
plan6(1, 2, 2) = 4
plan6(1, 3, 1) = 5
plan6(1, 3, 2) = 6

plan6(2, 1, 1) = 1
plan6(2, 1, 2) = 3
plan6(2, 2, 1) = 2
plan6(2, 2, 2) = 5
plan6(2, 3, 1) = 4
plan6(2, 3, 2) = 6

plan6(3, 1, 1) = 1
plan6(3, 1, 2) = 4
plan6(3, 2, 1) = 2
plan6(3, 2, 2) = 6
plan6(3, 3, 1) = 3
plan6(3, 3, 2) = 5

plan6(4, 1, 1) = 1
plan6(4, 1, 2) = 5
plan6(4, 2, 1) = 2
plan6(4, 2, 2) = 4
plan6(4, 3, 1) = 3
plan6(4, 3, 2) = 6

plan6(5, 1, 1) = 1
plan6(5, 1, 2) = 6
plan6(5, 2, 1) = 2
plan6(5, 2, 2) = 3
plan6(5, 3, 1) = 4
plan6(5, 3, 2) = 5

Dim iAnzahlTeams As Integer
Dim iGruppenGroesse As Integer
Dim iGruppenAnzahl As Integer
Dim iBeginnStunde As Integer, iBeginnMinute As Integer, iSpieldauer As Integer
Dim sheetTeams As String, sheetGruppen As String, sheetSpiele As String

Call GetValues(sheetTeams, sheetGruppen, sheetSpiele, iAnzahlTeams, iGruppenAnzahl, iGruppenGroesse, iBeginnStunde, iBeginnMinute, iSpieldauer)
Call DoSpieleErzeugen(sheetTeams, sheetGruppen, sheetSpiele, iAnzahlTeams, iGruppenAnzahl, iGruppenGroesse, 4, iSpieldauer, iBeginnStunde, iBeginnMinute)

End Sub

Private Sub DoSpieleErzeugen(ByVal sheetTeams As String, ByVal sheetGruppen As String, _
ByVal sheetSpiele As String, _
ByVal iAnzahlTeams As Integer, ByVal iGruppenAnzahl As Integer, _
ByVal iGruppenGroesse As Integer, ByVal iAnzahlPlaetze As Integer, _
ByVal iSpieldauer As Integer, _
ByVal iBeginnStunde As String, ByVal iBeginnMinute As Integer)

Dim GrNr, GrPos, yPos, iTargetPos As Integer
Dim iRunden, iRundenPos As Integer
Dim iSpiele, iSpielPos, iPlatzPos As Integer
Dim strTeam1, strTeam2 As String
Dim dtZeit As Date
Dim dInterval As Double

Sheets(sheetSpiele).Select

dtZeit = iBeginnStunde / 24 + iBeginnMinute / 24 / 60

dInterval = 1 / 24 / 60 * iSpieldauer

Select Case iGruppenGroesse
    Case 4
        iRunden = 3
        iSpiele = 2
    Case 5
        iRunden = 5
        iSpiele = 2
    Case 6
        iRunden = 5
        iSpiele = 3
End Select

iTargetPos = 2
iPlatzPos = 1

For iRundenPos = 1 To iRunden
    yPos = 1
    For GrNr = 1 To iGruppenAnzahl
        For iSpielPos = 1 To iSpiele
            strTeam1 = GetTeamName(iRundenPos, iSpielPos, 1, iGruppenGroesse, yPos, sheetGruppen)
            strTeam2 = GetTeamName(iRundenPos, iSpielPos, 2, iGruppenGroesse, yPos, sheetGruppen)

            If (iTargetPos + iAnzahlPlaetze - 1) Mod (iAnzahlPlaetze + 1) = 0 Then
                Sheets(sheetSpiele).Cells(iTargetPos, 1).Value = Format(dtZeit, "hh:mm")
                dtZeit = dtZeit + dInterval
                End If
                
            
            Sheets(sheetSpiele).Cells(iTargetPos, 2).Value = Chr(Asc("A") + GrNr - 1)
            Sheets(sheetSpiele).Cells(iTargetPos, 3).Value = strTeam1
            Sheets(sheetSpiele).Cells(iTargetPos, 4).Value = ":"
            Sheets(sheetSpiele).Cells(iTargetPos, 5).Value = strTeam2
            Sheets(sheetSpiele).Cells(iTargetPos, 6).Value = iPlatzPos
            Sheets(sheetSpiele).Cells(iTargetPos, 7).Value = "__ : __"
            
            iTargetPos = iTargetPos + 1
            
            If (iTargetPos - 1) Mod (iAnzahlPlaetze + 1) = 0 Then
                iTargetPos = iTargetPos + 1
                dtZeit = dtZeit + 1
                End If
                
            iPlatzPos = iPlatzPos + 1
            
            If iPlatzPos > iAnzahlPlaetze Then iPlatzPos = 1
                
        Next iSpielPos
        yPos = yPos + iGruppenGroesse + 1
    Next GrNr
    ' iTargetPos = iTargetPos + 1
Next iRundenPos

End Sub

Function GetTeamName(ByVal iRundenPos As Integer, ByVal iSpielPos As Integer, ByVal iTeamNr As Integer, _
ByVal iGruppenGroesse As Integer, ByVal yPos As Integer, ByVal sheetGruppen As String) As String

Dim strTeam As String
Dim iTeam As Integer

    Select Case iGruppenGroesse
        Case 4
            iTeam = plan4(iRundenPos, iSpielPos, iTeamNr)
        Case 5
            iTeam = plan5(iRundenPos, iSpielPos, iTeamNr)
        Case 6
            iTeam = plan6(iRundenPos, iSpielPos, iTeamNr)
    End Select
        
    yPos = yPos + iTeam
    strTeam = Sheets(sheetGruppen).Cells(yPos, 2).Value
        
    GetTeamName = strTeam
End Function

Private Sub GetValues(sheetTeams As String, sheetGruppen As String, _
sheetSpiele As String, iAnzahlTeams As Integer, iGruppenAnzahl As Integer, _
iGruppenGroesse As Integer, iBeginnStunde As Integer, iBeginnMinute As Integer, _
iSpieldauer As Integer)

If TurnierForm.RbSamstag.Value = True Then
sheetTeams = "Teams Samstag"
sheetGruppen = "Gruppen Samstag"
sheetSpiele = "Spielplan Samstag"
iAnzahlTeams = TurnierForm.AnzahlTeamsSa.Text
iGruppenAnzahl = TurnierForm.GruppenAnzahlSa.Text
iGruppenGroesse = TurnierForm.GruppenGroesseSa.Text
iBeginnStunde = TurnierForm.StdTurnierbeginnSa.Text
iBeginnMinute = TurnierForm.MinTurnierbeginnSa.Text
iSpieldauer = TurnierForm.SpieldauerSa.Text
End If

If TurnierForm.RbHerrenSo.Value = True Then
sheetTeams = "Teams Herren Sonntag"
sheetGruppen = "Gruppen Herren Sonntag"
sheetSpiele = "Spielplan Herren Sonntag"
iAnzahlTeams = TurnierForm.AnzahlTeamsHerrenSo.Text
iGruppenAnzahl = TurnierForm.GruppenAnzahlHerrenSo.Text
iGruppenGroesse = TurnierForm.GruppenGroesseHerrenSo.Text
iBeginnStunde = TurnierForm.StdTurnierbeginnHerrenSo.Text
iBeginnMinute = TurnierForm.MinTurnierbeginnHerrenSo.Text
iSpieldauer = TurnierForm.SpieldauerHerrenSo.Text
End If

If TurnierForm.RbDamenSo.Value = True Then
sheetTeams = "Teams Damen Sonntag"
sheetGruppen = "Gruppen Damen Sonntag"
sheetSpiele = "Spielplan Damen Sonntag"
iAnzahlTeams = TurnierForm.AnzahlTeamsDamenSo.Text
iGruppenAnzahl = TurnierForm.GruppenAnzahlDamenSo.Text
iGruppenGroesse = TurnierForm.GruppenGroesseDamenSo.Text
iBeginnStunde = TurnierForm.StdTurnierbeginnDamenSo.Text
iBeginnMinute = TurnierForm.MinTurnierbeginnDamenSo.Text
iSpieldauer = TurnierForm.SpieldauerDamenSo.Text
End If

End Sub
