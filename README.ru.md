# 8-to-3-commutator

СОДЕРЖАНИЕ

[**ПРОЕКТИРОВАНИЕ** ](#_Toc104412823)

[1.1. Принцип работы устройства ](#%D0%93%D0%BB%D0%B0%D0%B2%D0%B0_1_1)

[1.2. Блок-схема устройства ](#%D0%93%D0%BB%D0%B0%D0%B2%D0%B0_1_2)

[1.3. Принципиальные схемы блоков устройства ](#%D0%93%D0%BB%D0%B0%D0%B2%D0%B0_1_3)

[1.4 Проектирование и моделирование в программе virtuoso](#%D0%93%D0%BB%D0%B0%D0%B2%D0%B0_1_4)

[1.5 Работа с verilog-описанием, его синтез и моделирование](#%D0%93%D0%BB%D0%B0%D0%B2%D0%B0_1_5)

[ЗАКЛЮЧЕНИЕ](#%D0%97%D0%B0%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5)

## [**ПРОЕКТИРОВАНИЕ**](#_%D0%93%D0%9B%D0%90%D0%92%D0%90_1._%D0%9B%D0%9E%D0%93%D0%98%D0%A7%D0%95%D0%A1%D0%9A%D0%9E%D0%95)

## **1.1. Принцип работы устройства**

Задача состоит в передаче сигналов с 8 входов на 3 выхода, при этом на один выход не может быть подключено более одного входа, поскольку это вызовет конфликт у входов устройства – короткое замыкание входов. В то же время на один вход может быть подключено несколько выходов. Рисунок 1 показывает, как мы не можем соединять входы с выходами, рисунок 2 показывает, как можем.

![](RackMultipart20220530-1-i9tiiw_html_92d0f76b20847692.png)

Рисунок 1 – Неправильный способ коммутации

![](RackMultipart20220530-1-i9tiiw_html_eacc82a6b3fd0315.png)

Рисунок 2 – Корректный способ коммутации

То есть помимо соединения входов и выход нам также необходимо отсеять неправильные способы коммутации. Сделать это можно за счет отбора 8 входов для каждого отдельного выхода, то есть мы должны под каждый выход отобрать лишь один вход. Такую функцию в сфере цифровых устройств выполняет мультиплексор.

Поскольку у нас имеется 8 входов, мультиплексор должен из этих входов выбрать тот, который нужно подать на выход. Если же мы захотим не подключать ни один из этих входов на выход, нам нужно предусмотреть подключение логического нуля на выход. Для этого мы просто можем сделать подать логический ноль на один из входов мультиплексора и соответствующий ему управляющий трехразрядный сигнал, например подадим управляющий сигнал 000 и 0 на первый вход(обозначен как DO).

Получается, что основным устройством нашего коммутатора будет мультиплексор 8 к 1, а управление мультиплексором будет осуществляться через 3-ех битный сигнал.

Помимо этого, одним из условий задания является возможность запоминания состояния коммутатора, чтобы мы могли управляющие сигналы на мультиплексоры подавать не на протяжении всего времени работы коммутатора. То есть один раз подаем на мультиплексор управляющий сигнал и забываем про него до тех пор, пока не надо поменять его. В этом нам поможет триггер – он будет запоминать состояние управляющих входов.

## **1.2. Блок-схема устройства**

![](RackMultipart20220530-1-i9tiiw_html_5e0586702119b0b3.png)

Рисунок 3 – Логическая блок-схема устройства

Управляющий сигнал будет управлять 3-мя мультиплексорами, по одному мультиплексору на каждый выход коммутатора. У нас будет 3 параллельных 3-ех битных шины на каждый мультиплексор, эти входы будут управляющими. Итого у нас будет 12 управляющих сигналов.

Коммутатор представляет из себя 3 мультиплексора, ко входам которых будут подведены выходы с запоминающего блока.

Входы коммутатора – 8 параллельных входов, принимающих цифровой сигнал, 3 выхода также цифровые.

Помимо этого запоминающий регистр будет состоять из 3-ех разрядного синхронизирующего сигнала и 3-ех разрядного управляющего сигнала. Если нам нужно поменять состояние на первом мультиплексоре, мы подадим синхронизирующий сигнал 100, если на всех мультиплексорах, подадим 111, регистр будет запоминать управляющий сигнал ABC.

![](RackMultipart20220530-1-i9tiiw_html_c5189b1cf9f4b5a.png)

Таблица 1. Логическая таблица мультиплексора 8к1, Dx – x-вый вход, A,B,C – управляющие сигналы

Алгоритм

1. Подаем управляющий сигнал
2. Запоминаем управляющий сигнал, далее его течение можно прервать
3. С выхода запоминающего устройства управляющий сигнал идет к коммутатору
4. Управляющий сигнал соединяет определенные вход с определенным выходом.

## **1.3. Принципиальные схемы блоков устройства**

![](RackMultipart20220530-1-i9tiiw_html_186804187edf53a.gif)

Рисунок 4 – Схема запоминающего блока

![](RackMultipart20220530-1-i9tiiw_html_af37293aa90ea879.jpg)

Рисунок 5 – Схема коммутирующего блока

![Shape1](RackMultipart20220530-1-i9tiiw_html_9bd99171f76e2bc9.gif)

Рисунок 6 – Схема запоминающего блока как цельного устройства

![](RackMultipart20220530-1-i9tiiw_html_3bb3042be8b3fd2e.png)

Рисунок 7 – Схема коммутатора как цельного устройства

![](RackMultipart20220530-1-i9tiiw_html_77efa6effa0df7ca.gif)

Рисунок 8 – Схема соединения логических блоков

![](RackMultipart20220530-1-i9tiiw_html_2a5bf13e12d3d074.gif)

Рисунок 9 – Схема мультиплексора

![](RackMultipart20220530-1-i9tiiw_html_b3d2b68609412a34.gif)

Рисунок 10 – Схема триггера

**1.4 Проектирование и моделирование в программе**  **virtuoso**

## ![](RackMultipart20220530-1-i9tiiw_html_5fa2a6f2e58a100a.png)

Рисунок 11 – Schematic представление мультиплексора в программе virtuoso

##


## ![](RackMultipart20220530-1-i9tiiw_html_c2a2471825fd38c9.png)

Рисунок 12 – Schematic представление запоминающего регистра в программе virtuoso

## ![](RackMultipart20220530-1-i9tiiw_html_c52937e4fc5d21a5.png)

Рисунок 13 – Schematic представление ячейки регистра в программе virtuoso

##


## ![](RackMultipart20220530-1-i9tiiw_html_74dc56d4fbce001a.png)

Рисунок 14 – Schematic представление d-триггера в программе virtuoso

![](RackMultipart20220530-1-i9tiiw_html_c647ab3527a608ea.png)

Рисунок 15 – Schematic представление регистра мультиплексоров в программе virtuoso

## ![](RackMultipart20220530-1-i9tiiw_html_af1ae6ae79e9dc92.png)

##


Рисунок 16 – Моделирование мультиплексора в программе virtuoso, для наглядности на вход D6 подаем напряжение логической единицы, остальные входы оставим равными нулю

## ![](RackMultipart20220530-1-i9tiiw_html_b909c2051f4a1fd5.png)

Рисунок 17 – Моделирование мультиплексора в программе virtuoso, для наглядности на вход D5 подаем напряжение логической единицы, остальные входы оставим равными нулю

## ![](RackMultipart20220530-1-i9tiiw_html_b94ff12d24cc9b9b.png)

Рисунок 18 – Моделирование мультиплексора в программе virtuoso, для наглядности на вход D3 подаем напряжение логической единицы, остальные входы оставим равными нулю

##


## ![](RackMultipart20220530-1-i9tiiw_html_24801c3d103b4b3b.png)

Рисунок 19 – Моделирование мультиплексора в программе virtuoso, для наглядности на вход D4 подаем напряжение логической единицы, остальные входы оставим равными нулю

## ![](RackMultipart20220530-1-i9tiiw_html_b5099ad930cbbc50.png)

Рисунок 20 – Моделирование мультиплексора в программе virtuoso, для наглядности на вход D2(a1 на графике) подаем напряжение логической единицы, остальные входы оставим равными нулю

## ![](RackMultipart20220530-1-i9tiiw_html_fe4d84cc7502f900.png)

Рисунок 21 – Моделирование мультиплексора в программе virtuoso, для наглядности на вход D1 подаем напряжение логической единицы, остальные входы оставим равными нулю

## ![](RackMultipart20220530-1-i9tiiw_html_375286474a923ea8.png)

Рисунок 22 – Моделирование мультиплексора в программе virtuoso, для наглядности на вход D0 подаем напряжение логической единицы, остальные входы оставим равными нулю

![](RackMultipart20220530-1-i9tiiw_html_3a5e7bcca8ed1bd8.png)

Рисунок 23 – Моделирование мультиплексора в программе virtuoso, для наглядности на вход D7 подаем напряжение логической единицы, остальные входы оставим равными нулю

## ![](RackMultipart20220530-1-i9tiiw_html_ac1bf8cd4f1caffb.png)

Рисунок 24 – Моделирование работы ячейки запоминающего регистра в программе virtuoso

## ![](RackMultipart20220530-1-i9tiiw_html_9e56183364ccadc5.png)

Рисунок 25 – Моделирование работы запоминающего регистра в программе virtuoso

![](RackMultipart20220530-1-i9tiiw_html_3a26852b82f8e52a.png)

Рисунок 26 – Моделирование работы блока мультиплексоров в программе virtuoso, на вход D7 подаем 1, на остальные входы 0

![](RackMultipart20220530-1-i9tiiw_html_ff0a8cb26057e633.png)

Рисунок 27 – Моделирование работы блока мультиплексоров в программе virtuoso, на вход D3 подаем 1, на остальные входы 0

![](RackMultipart20220530-1-i9tiiw_html_81c31ca2683ea2e8.png)

Рисунок 28 – Моделирование работы блока мультиплексоров в программе virtuoso, на вход D0 подаем 1, на остальные входы 0

**1.5 Работа с**  **verilog**** -описанием, его синтез и моделирование**

Поведенческое verilog – описание устройства commutator.v:

  `timescale 1ns/1ns

  module multiplexer\_8\_to\_1(d,control,out);

  input [2:0]control;

  input [7:0]d;

  output reg out;

  always @ (d[0] or d[1] or d[2] or d[3] or d[4] or d[5] or d[6] or d[7] or control[0] or control[1]) begin

  case(control)

  3&#39;b000 : out \&lt;= d[0];

  3&#39;b100 : out \&lt;= d[1];

  3&#39;b010 : out \&lt;= d[2];

  3&#39;b110 : out \&lt;= d[3];

  3&#39;b001 : out \&lt;= d[4];

  3&#39;b101 : out \&lt;= d[5];

  3&#39;b011 : out \&lt;= d[6];

  3&#39;b111 : out \&lt;= d[7];

  default : out \&lt;= 0;

  endcase

  end

  endmodule

  module mx\_reg(d,control,out);

  input [7:0] d;

  input [2:0][2:0] control;

  output [2:0] out;

  multiplexer\_8\_to\_1 dd0(.d(d), .control(control[0]), .out(out[0]));

  multiplexer\_8\_to\_1 dd1(.d(d), .control(control[1]), .out(out[1]));

  multiplexer\_8\_to\_1 dd2(.d(d), .control(control[2]), .out(out[2]));

  endmodule

  module d\_trigger(d,clk,q,qbar);

  output reg q;

  output qbar;

  input d, clk;

  assign qbar = ~q;

  always @ (d or clk) begin

  if (clk)

  #1 q = d;

  end

  endmodule

  module mem\_reg(control,clk,out);

  input clk;

  input [2:0] control;

  output [2:0] out;

  d\_trigger dd0(.d(control[0]), .clk(clk), .q(out[0]), .qbar());

  d\_trigger dd1(.d(control[1]), .clk(clk), .q(out[1]), .qbar());

  d\_trigger dd2(.d(control[2]), .clk(clk), .q(out[2]), .qbar());

  endmodule

  module mem3\_reg(control,clk,out);

  input [2:0]clk;

  input [2:0] control;

  output [2:0][2:0] out;

  mem\_reg dd0(.control(control), .clk(clk[0]), .out(out[0]));

  mem\_reg dd1(.control(control), .clk(clk[1]), .out(out[1]));

  mem\_reg dd2(.control(control), .clk(clk[2]), .out(out[2]));

  endmodule

  module commutator(inputs,control,clk,outputs);

  input [2:0]clk;

  input [2:0] control;

  input [7:0] inputs;

  output [2:0] outputs;

  wire [2:0][2:0] mem\_out;

  mem3\_reg dd0(.control(control),.clk(clk),.out(mem\_out));

  mx\_reg dd1(.d(inputs),.control(mem\_out),.out(outputs));

  endmodule

Описание testbench – файла для коммутатора:

  `include &quot;commutator.v&quot;

  `timescale 1ns/1ns

  module commutator\_test;

  reg [2:0] control;

  reg [2:0]clk;

  reg [7:0]inputs;

  wire [2:0]outputs;

  initial begin

  clk \&lt;= 3&#39;b000;

  control \&lt;= 3&#39;b000;

  inputs \&lt;= 8&#39;b00000000;

  end

  commutator dd0(.inputs(inputs),.control(control),.clk(clk),.outputs(outputs));

  always #50 clk[0] = ~clk[0];

  always #35 clk[1] = ~clk[1];

  always #43 clk[2] = ~clk[2];

  always #30 control[0] = ~control[0];

  always #27 control[1] = ~control[1];

  always #25 control[2] = ~control[2];

  always #12 inputs[0] = ~inputs[0];

  always #11 inputs[1] = ~inputs[1];

  always #10 inputs[2] = ~inputs[2];

  always #9 inputs[3] = ~inputs[3];

  always #8 inputs[4] = ~inputs[4];

  always #7 inputs[5] = ~inputs[5];

  always #4 inputs[6] = ~inputs[6];

  always #2 inputs[7] = ~inputs[7];

  initial begin

  $dumpfile(&quot;commutator\_test.vcd&quot;);

  $dumpvars;

  $display(&quot;test complete&quot;);

  #400;

  $finish;

  end

  endmodule

Синтезированное в программе genusverilog – описание коммутатора:

// Generated by Cadence Genus(TM) Synthesis Solution 19.10-p002\_1

// Generated on: May 25 2022 20:10:28 MSK (May 25 2022 17:10:28 UTC)

// Verification Directory fv/commutator

  module commutator(inputs, control, clk, outputs);

  input [7:0] inputs;

  input [2:0] control, clk;

  output [2:0] outputs;

  wire [7:0] inputs;

  wire [2:0] control, clk;

  wire [2:0] outputs;

  wire [8:0] mem\_out;

  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,

  UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;

  wire UNCONNECTED7, n\_0, n\_1, n\_2, n\_3, n\_4, n\_5, n\_6;

  wire n\_7, n\_8;

  MXI4XL g754(.A (n\_0), .B (n\_1), .C (n\_3), .D (n\_4), .S0 (mem\_out[4]),

  .S1 (mem\_out[5]), .Y (outputs[1]));

  MX2XL g752(.A (n\_7), .B (n\_6), .S0 (mem\_out[8]), .Y (outputs[2]));

  MX2XL g753(.A (n\_8), .B (n\_5), .S0 (mem\_out[1]), .Y (outputs[0]));

  MX4XL g756(.A (inputs[0]), .B (inputs[1]), .C (inputs[4]), .D

  (inputs[5]), .S0 (mem\_out[2]), .S1 (mem\_out[0]), .Y (n\_8));

  MX4XL g757(.A (inputs[0]), .B (inputs[2]), .C (inputs[4]), .D

  (inputs[6]), .S0 (mem\_out[7]), .S1 (mem\_out[6]), .Y (n\_7));

  MX4XL g755(.A (inputs[1]), .B (inputs[5]), .C (inputs[3]), .D

  (inputs[7]), .S0 (mem\_out[6]), .S1 (mem\_out[7]), .Y (n\_6));

  MX4XL g758(.A (inputs[2]), .B (inputs[6]), .C (inputs[3]), .D

  (inputs[7]), .S0 (mem\_out[0]), .S1 (mem\_out[2]), .Y (n\_5));

  AOI22XL g759(.A0 (inputs[3]), .A1 (mem\_out[3]), .B0 (inputs[7]), .B1

  (n\_2), .Y (n\_4));

  AOI22XL g760(.A0 (inputs[1]), .A1 (mem\_out[3]), .B0 (inputs[5]), .B1

  (n\_2), .Y (n\_3));

  AOI22XL g761(.A0 (inputs[2]), .A1 (mem\_out[3]), .B0 (inputs[6]), .B1

  (n\_2), .Y (n\_1));

  AOI22XL g762(.A0 (inputs[0]), .A1 (mem\_out[3]), .B0 (inputs[4]), .B1

  (n\_2), .Y (n\_0));

  INVXL g767(.A (mem\_out[3]), .Y (n\_2));

  TLATX1 dd0\_dd0\_dd1\_q\_reg(.G (clk[0]), .D (control[1]), .Q

  (mem\_out[1]), .QN (UNCONNECTED));

  TLATX1 dd0\_dd2\_dd1\_q\_reg(.G (clk[2]), .D (control[1]), .Q

  (mem\_out[7]), .QN (UNCONNECTED0));

  TLATX1 dd0\_dd2\_dd0\_q\_reg(.G (clk[2]), .D (control[0]), .Q

  (mem\_out[6]), .QN (UNCONNECTED1));

  TLATX1 dd0\_dd0\_dd0\_q\_reg(.G (clk[0]), .D (control[0]), .Q

  (mem\_out[0]), .QN (UNCONNECTED2));

  TLATX1 dd0\_dd1\_dd2\_q\_reg(.G (clk[1]), .D (control[2]), .Q

  (mem\_out[5]), .QN (UNCONNECTED3));

  TLATX1 dd0\_dd1\_dd1\_q\_reg(.G (clk[1]), .D (control[1]), .Q

  (mem\_out[4]), .QN (UNCONNECTED4));

  TLATX1 dd0\_dd2\_dd2\_q\_reg(.G (clk[2]), .D (control[2]), .Q

  (mem\_out[8]), .QN (UNCONNECTED5));

  TLATX1 dd0\_dd0\_dd2\_q\_reg(.G (clk[0]), .D (control[2]), .Q

  (mem\_out[2]), .QN (UNCONNECTED6));

  TLATX1 dd0\_dd1\_dd0\_q\_reg(.G (clk[1]), .D (control[0]), .Q

  (UNCONNECTED7), .QN (mem\_out[3]));

  endmodule

![](RackMultipart20220530-1-i9tiiw_html_bcdc8a6d1aaa2d0.png)

Рисунок 29 – Моделирование работы блока мультплексоров в программе gtkwave, для понятности импульс подаем лишь на вход D7, управляющие и синхронизирующие сигналы подобраны случайно, временные задержки работы устройства не учтены

![](RackMultipart20220530-1-i9tiiw_html_ef7e0df1e28a0804.png)

Рисунок 30 – Моделирование работы блока мультиплексоров в программе gtkwave, для понятности импульс подаем лишь на вход D0

![](RackMultipart20220530-1-i9tiiw_html_b18f48f96973995e.png)

Рисунок 31 – Моделирование работы в программе gtkwave, для понятности импульс подаем лишь на вход D7

![](RackMultipart20220530-1-i9tiiw_html_6cb1ed00efedf438.png)

Рисунок 32 – Моделирование работы мультиплексора в программе gtkwave, для понятности импульс подаем лишь на вход D0

![](RackMultipart20220530-1-i9tiiw_html_78e39c318648bd90.png)

Рисунок 33 – Моделирование работы d-триггера в программе gtkwave

![](RackMultipart20220530-1-i9tiiw_html_54e046962e026310.png)

Рисунок 34 – Моделирование работы ячейки запоминающего регистра в программе gtkwave

![](RackMultipart20220530-1-i9tiiw_html_5395f2ed1d9ac024.png)

Рисунок 35 – Моделирование работы запоминающего регистра в программе gtkwave

![](RackMultipart20220530-1-i9tiiw_html_75b1b9578a47285.png)

Рисунок 35 – Моделирование работы коммутатора в программе gtkwave, для наглядности импульс подаем лишь на первый вход

![](RackMultipart20220530-1-i9tiiw_html_34f3fda682ca16f8.png)

Рисунок 36 – Моделирование работы коммутатора в программе gtkwave, для наглядности импульс подаем лишь на последний вход

![](RackMultipart20220530-1-i9tiiw_html_20d6e1724b6dd2bc.gif)

Рисунок 37 – Schematic-представление, сгенерированное в программе genus, как мы видим, базовыми примитивами программы были выбраны не 8к1 мультиплексоры, а 4к1, вероятнее всего по причине отстутствия в базовых библиотеках данного мультиплексора

![](RackMultipart20220530-1-i9tiiw_html_cdee3b7cf4b70a8.png)

Рисунок 38 – Коммутатор, собранный в программе innovus, угловые площадки не используются, слева у нас 8 входов коммутатора, сверху 2 контакта для питания VDD и 3 контакта CLK, справа 3 выхода коммутатора, контакты VSSIOR и VDDIOR, снизу 3 контакта CONTROL и 2 контакта для земли

![](RackMultipart20220530-1-i9tiiw_html_95753e98dd7bc347.png)

Рисунок 39 – Layout-представление, автоматически собранное в ядре микросхемы, схема прошла проверку DRC-анализа

**ЗАКЛЮЧЕНИЕ**

Мне понравился процесс синтеза verilog-описания своего устройства, genus это очень удобный интструмент, позволяющий разрабатывать микросхемы любой сложности, обходясь достаточно простым и коротким кодом. В процессе работы меня еще больше привлекла моя специальность и та область, в которой в будущем мне придется работать.

У меня получилась очень простая схема и очень малое использование минимальной площади кристалла, размеры сземы соизмеримы с шириной одной контактной площадки.

Я надеюсь, что в будущем смогу поработать с более нагруженными схемами, помимо этого хотелось бы попробовать VHDL.
