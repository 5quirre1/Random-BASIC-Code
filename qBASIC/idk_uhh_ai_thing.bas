print "starting up.."
sleep 5
print "almost done.."
sleep 5
print "done!"
print "-----------------------------------------------"

input "what is your name?: ";name$

REM the name if statements
if name$ = "greg" then
    print "wowzers so peak name"
    
elseif name$ = "wish" then
    print "oh hai wish !!!"
elseif name$ = "noma" or name$ = "hacks.guide" or name$ = "nomaakip" or instr(name$, "noma") >= 1 then
    print "hai noma!!!"
elseif Len(name$) = 0 then
    print "no name.."
    end
elseif name$ = "squirrel" then
    print "Squirrel!!!!! HAIIII!!!!!"
else
    print "Haiii ";name$; "!!!!!!!"
end if

print "------------------------------------------------------"
print "hru "; name$ ; "????????"
input "you: ";how$

REM hru if statements
if instr(how$, "wbu") >= 1 and instr(how$, "good") >= 1 then
      print "I've been pretty good, thanks for asking!"
elseif instr(how$, "good") >= 1 then 
    print "that's great!"
elseif how$ = "no" then
    print "ok.."
    end
elseif instr(how$, "sad" ) >= 1 then
    print "You can always dm me in discord if you feel sad :)"
    print "my discord: https://discord.com/users/1127731486485921813"
elseif how$ = "gay" then
    print "wow gay so peak"
elseif how$ = "greg" then
    print "greg wow"
else
    print "ooo alr"
end if
print
print "anyway, I'm a very cool 'ai' chat person or smth"
print "so feel free to use some commands!! Just say 'help'!!" : print "make sure to use lowercase tho plz :3"
print "------------------------------------------------------"
sleep 3
print "user: ";name$ ; " "
dim command as string
input ">> ";command$
if instr(command$, "help") >= 1 then
    print "Hai again, ";name$ ; "!"
    print "what would you like help with?"
    sleep 1
    print "1. talk"
    print "2. commands"
    print "---------------"
    input "help >> ";help$
  if instr(help$, "talk") >= 1 then
      print "What would you want to talk about?" : print "Use simple keywords like 'sad', 'happy', 'mad', 'nervous', or 'hurt'."
      input "talk >> ";talk$
      REM the talk if statements
      if instr(talk$, "sad") >= 1 then
         print "aww.. I'm really sad you're feeling sad :c If you really need to talk to someone, plz dm me."
         print "my discord: https://discord.com/users/1127731486485921813"
      elseif instr(talk$, "hurt") and instr(talk$, "myself") >= 1 then
          print ":ccccc you need to talk to someone that you trust :("
  elseif instr(help$, "commands") >= 1 then
      print "not good yet so there's not really anything yet. Sorry :c"
  else 
      print "there's no help command called that!"
  end if
end if
end if
