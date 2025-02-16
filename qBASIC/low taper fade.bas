Dim why As String
Dim health As Integer
health = 100

Do
    Print "what's massive..."
    Input "", why

    If InStr(why, "low taper fade") >= 1 Then
        Print "correct.. you can live"
        End
    Else
        Print "WRONG.. TOOK 10 HEALTH AWAY..."
        health = health - 10
        Print "health: "; health
        Print

        If health <= 0 Then
            Print "it was low taper fade you dumbass..."
            Sleep 1
            End
        End If
    End If
Loop

