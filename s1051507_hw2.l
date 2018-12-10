%{ 
  #include "y.tab.h"
  #include <stdio.h>
%}
  
%%

"begin"     	{return begin;} //token為begin  回傳到.y 的begin
" east" 		{return east ;} //token為 east  回傳到.y 的east
" north" 		{return north;} //token為 north 回傳到.y 的north
" west" 		{return west; } //token為 west  回傳到.y 的west
" south" 		{return south;} //token為 south 回傳到.y 的south

\n				{return EOL;}	//token為換行字元 回傳到.y的EOL
.               { printf("Error!\n"); exit(1);}  //當為非法字元 顯示錯誤並跳出

%%

int yywrap() //當需要處理多個檔案時要設置為1
{
     return 1;
}



