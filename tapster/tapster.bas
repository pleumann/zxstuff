PLUS3DOS i"   �!e��                                                                                                         � 
 ;   ; === Setup ===============  ;  # �4667  ; ,1     ( ��3       26 �7    :�7    :�0     :�0     :�0     :�0      < �42767  �  F �Pokes()�start,max,tape,check P6 �Window(1    ,1    ,6    ,30    ,"Tapster")   Z> �Window(10  
  ,1    ,21    ,30    ,"0K in 0 file(s)") dB �3    :�3    ,"w>11,2,10,28,4":�;�19    ;�1    ;�1    ; n �'"Tapster Version 0.7" x �"(c) 2020 Joerg Pleumann" � � � �max;" bytes available" � � �5 ��2    ,2    ;�1    ;"Start"," [X]Keep dupes"; �8 ��3    ,2    ;�1    ;"Directory"," [X]Fix names"; �4 ��4    ,2    ;�1    ;"Help"," [X]Add suffix"; �4 ��5    ,2    ;�1    ;"Quit"," [X]Headerless"; �\ �o(4    ):�o(1    )=1    :�o(2    )=1    :�o(3    )=1    :�o(4    )=1     �: �mrow=0     :�mcol=0     :�mrow2=0     :�mcol2=0      � �"Directory is ";:�#3     � �FlashLight(0     ) � ;  � ; === Menu navigation === ; D �22528   X +65  A  +mrow*32     +mcol*15    ,"xxxxxxxxxxxxxxx"F �22528   X +65  A  +mrow2*32     +mcol2*15    ,"hhhhhhhhhhhhhhh"" �mrow=mrow2:�mcol=mcol2,& �0     :�k$=�:�0.015zu\,-20    6. �k$=�8    �mcol>0     �mcol2=0     :�%270@. �k$=�9  	  �mcol<1    �mcol2=1    :�%270J4 �k$=�10  
  �mrow<3    �mrow2=mrow+1    :�%270T4 �k$=�11    �mrow>0     �mrow2=mrow-1    :�%270^ �k$��13    ��%300h} �mcol=1    ��o(mrow+1    )=1    -o(mrow+1    ):��2    +mrow,18    ;�1    ;" X"(o(mrow+1    )+1    );:�%280r! �mrow=1    ˓Directory():�%220| �mrow=2    ˓Help():�%290� �mrow=3    ���0     :�� ; � ; === Main converter ======� ;� �FlashLight(1    )�; �6    :�6    ,"u>tapster.txt":�#6    �s:�#6    , s� �bytes=0     :�files=0     �Q �dupes=o(1    ):�fixnames=o(2    ):�suffix=o(3    ):�headerless=o(4    )�a ��10  
  ,2    ;�0     ;�7    ;�1    ;�(bytes/1024    );"K in ";files;" file(s)     ";�S �q=%�23730-�23653:�q < 256    ˓LogPrint("Memory low, only "+�(q)+" bytes left")�6 �headerlessˉtape+5    ,max:��tape+5    ,19    �
 ��0     �	 �e=�tape
 ��3     ��=" "��6    :�%230 �e<2    ��%480&$ �e>max˓LogPrint("Too large"):�%4800 �: �check+4    ,eD �%c=�check:�sum =%c & 255N/ �sum�0     ˓LogPrint("Checksum error"):�%480X! ��start=0     �e=19    ��%690b) ��start=0     �headerless=0     ��%470l �t=5    v �n$="Headerless"� �l=e-2    � �a=32768   � � �b=32768   � �! �LogPrint(n$+" (length="+�l+")")� �%950� �t=�(start+1    )� �n$=�(start+2    ,10  
  )�
 �%s=start� �l= %�(s+12)� �a= %�(s+14)� �b= %�(s+16)�6 ��(n$)�0     ��n$(�n$)=" "�n$=n$(̱n$-1    ):�%750�s �t=0     ��t$= "Program: ":��t=1    ��t$= "Numeric array: ":��t=2    ��t$= "Character array: ":��t$="Bytes: " �t$=t$+n$+" (size "+�l/ �t=0     �(a�9999  ' )��t$=t$+", line " +�a �t=0     �b<l��t$=t$+", vars" [ �t=1    �t=2    ��%n=a:�nn=%((n/256)&31)+96:�t$=t$+", name "+�nn:�t=2    ��t$=t$+"$"* �t=4    ��t$=t$+", addr "+�a4 �t$=t$+ ")"> �LogPrint(t$)H, �l+2    >max˓LogPrint("Too large"):�%480R �t=5    ��%950\ �tape+5    ,l+2    f
 ��0     p	 �e=�tapez
 ��3    � ��=" "��6    :�%230�- �e-2    <l˓LogPrint("Length error"):�%480� �check+4    ,e� �%c=�check:�sum=%c&255�5 �sum�0     ˓LogPrint("Checksum error"):�GO TO %480�	 �7    �R �ON ERROR ERROR TO err: PROC LogPrint("Error: "+ STR$ err): ON ERROR : GO TO %460� �DiskName(t,n$,l)�n$�, �z$="Saving as """+n$+"""...":�LogPrint(z$)�N �r=0     :�start+1    +l�65536�    ��r=start+1    +l-65536�    :�l=l-r� �"l=";l;" r=";r� �n$�start+1    ,l+r�	 �5    � �5    ,"u>"+n$�Z �r�0     ��#5    ,l+128  �  :�WriteBytes(5    ,9  	  ,0     ,r):�#5    ,0     � �n=0     �127     �#5    �%x �start+n,%x �n% �LET %s=start: LPRINT % DPEEK (s+11) �DPOKE start+11,l+r+128$ �start+15    ,t. �DPOKE start+16,l+r8 �start+18    ,aB �start+20    ,bL- �check+4    ,127    :�%c=�check:�%c=%c�8V �start+127    ,%c` �#5    ,0     j �n=0     �127    t �#5    ;¾(start+n);~ �n�	 �5    � �LogPrint("OK")�$ �files=files+1    :�bytes=bytes+l� ��� �%470� ;� ; === Draw window =========� ; � �Window(row,col,row2,col2,t$)� �n,s$,x,y,w,h� �s$(col2-col-6    -�t$)�0 ��row,col;�0     ;�7    ;�1    ;" ";t$;s$; � ��0     ;�2    ;�1    ;"�";:��2    ;�6    ;�1    ;"�";:��6    ;�4    ;�1    ;"�";:��4    ;�5    ;�1    ;"�";:��5    ;�0     ;�1    ;"�";:��0     ;" ";
 �s$(col2-col+1    ), �n=row+1    �row2:��n,col;�1    ;s$;:�nd �x=col*8    :�y=176  �  -row*8    -8    :�w=(col2-col)*8    +7    :�h=(row2-row)*8    (' �x,y:�0     ,-h:�w,0     :�0     ,h2 �< ; F ; === Show progress =======P ; Z �LogPrint(m$)d �t$n �m$x �DateTime()�t$� �#6    ;t$;" ";m$� �� ; � ; == Get date/time as $ ===� ; � �DateTime()� �a$,b$� �b$(50  2  )� �2    ,"v>b$"�	 ���%1530� .date:.time�4 �a$=b$(13    �22    )+" "+b$(37  %  �44  ,  )�
 �2      �� �= a$ ;" ; === Flashlight on/off ===, ; 6 �FlashLight(b)@L ��8    ,1    ;�2    ;�7    ;�b;�b;"  LISTENING - Space to stop.  ";J �T ;^ ; === Change directory ====h ; r �Directory()| �"m:tapster.tmp"��z .browse -k -p "Navigate with cursor keys, ENTER, EDIT and D.      Use K to create new directory and SPACE to confirm." p$� �"m:tapster.tmp"�� �"m:tapster.tmp"� �� ; � ; === Show help ===========� ; � �Help()�� �'"This program helps you migrate your tapes to the ZX Spectrum Next's SD card or RAM disk. Select a target directory and you are ready to go. The maximum file size is around 32K (40K when running from a BANK)."''� �"There are options for handling duplicate files, fixing tape file names that would be invalid on disk, adding proper suffixes (such as .bas or .scr) and allowing headerless files."� �� ;� ; === Fix filename ======== ;  �DiskName(type,n$,size) �c$,e$,f$,o$,c,n& ��fixnames��o$=n$:�%18900 �o$="": �n=1    ̱n$D
 �c$=n$(n)Ns �c$�"0"�c$�"9"�c$�"A"�c$�"Z"�c$�"a"�c$�"z"�c$="#"�c$="$"�c$="@"�c$="^"�c$="_"�c$="{"�c$="}"�c$="~"�c$="`"�o$=o$+c$X �nb �o$=""�o$="Untitled"l �e$=""v ��suffix��%1960�  �type=0     ��e$=".bas":�%1960�  �type=1    ��e$=".num":�%1960�  �type=2    ��e$=".chr":�%1960�( �size=6912    ��e$=".scr":��e$=".bin"� ��dupes��f$=o$+e$:�%2050�	 ���%2040� �c=0     �9999  ' � �f$=o$� �c�0     ��f$=f$+"-"+�(c)�
 �f$=f$+e$�# �5    :�5    ,"i>"+f$:�5    � �c� �� �=f$ ; ; === Poke MC & UDGs ======  ; *	 �Pokes()4 �start,max,tape,check,udg>$ �start=65000  �� :�%1+ DPEEK 23730H �max=49152   � :�65536-startR �tape=16384   @ \ �check=tape+256    f �udg=check+256    p �23675  {\ ,udgz+ �22528   X ,"???????????????????????????"�M ��"a",1    ,3    ,7    ,15    ,31    ,63  ?  ,127    ,255  �  �� �tape,221  �  ,33  !  ,start~,17    ,0     ,128  �  ,14    ,14    ,55  7  ,8    ,243  �  ,213  �  ,205  �  ,108  l  ,5    ,251  �  ,225  �  ,55  7  ,237  �  ,82  R  ,229  �  ,193  �  ,3    ,201  �  �� �check,33  !  ,start~,17    ,0     ,0     ,1    ,0     ,0     ,122  z  ,179  �  ,200  �  ,120  x  ,134  �  ,71  G  ,121  y  ,174  �  ,79  O  ,35  #  ,27    ,24    ,255  �  -12    � �=start,max,tape,check� ;� ; === Bytes to stream =====� ;�) �WriteBytes(stream,bankno,offset,length)�
 �chunk,a$� �length=0     ��3100   �0 �length>256    �chunk=256    :�chunk=length� �a$=�bankno�(offset, chunk)� �#stream;a$;�* �offset=offset+chunk:�length=length-chunk �3020  �  ��tar�  �� �a�   � �ap�   @ �hec�   A �d�     �o�     �o�     �ow�     �ol�     �  �          jx     y     w     h     �!                                �                  �ro�     �co�     �row�     �col�     b  e K s  F �yte��  �ile�    �upe�    �ixname�    �uffi�    �eaderles�    q  �' e     �u�  �  t     l��  a     �yp�     �iz�     �       '     �O  F  E  C  N Bundesliga-20.basZ  Saving as "Bundesliga-20.bas"...r�Bp  �trea�     �ankn�     �ffse�     �engt�     �hun�     �5 2                                                   A  T' Program: Bundesliga (size 6757, line 0)M  