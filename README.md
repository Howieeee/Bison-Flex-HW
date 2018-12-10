# Bison-Flex-HW

Compiler hw2 

Use Ubuntu

1.Ubuntu install bison & flex

    sudo apt-get install flex bison

2.編譯指令

    1. cd 至 檔案所在資料夾

    2. yacc -d s1051507_hw2.y

    3. lex s1051507_hw2.l

    4. gcc lex.yy.c y.tab.c -ll 產生 a.out ( a.exe )

3.執行

     ./a.out


4.測資

    1.begin east east north west south

    2.begin south south west west north south south

    3.begin

    4.begin southern
  
5.結果

    1. x:1 y:0
  
    2. x:-2 y:-3
  
    3. x:0 y:0
  
    4. Error!
  
