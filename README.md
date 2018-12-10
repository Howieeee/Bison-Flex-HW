# Bison-Flex-HW

Compiler hw2 

Use Ubuntu

編譯指令

1. cd 至 檔案所在資料夾

2. yacc -d s1051507_hw2.y

3. lex s1051507_hw.l

4. gcc lex.yy.c y.tab.c -ll 產生 a.out ( a.exe )

執行

./a.out


測資

  1.begin east east north west south

  2.begin south south west west north south south

  3.begin

  4.begin southern
