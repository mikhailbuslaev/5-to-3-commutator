#определяем глобальные параметры
#направление расположения площадок – по часовой стрелке
(globals
version = 3
io_order = clockwise
)
#описываем площадки (указываем имя, тип ячейки
#и ориентацию для угловых ячеек)
#слева сверху, справа сверху, справа снизу, слева снизу – угловые
#контактные площадки
#слева, сверху, справа и снизу – контактные площадки
#входные / выходные, питания ядра и питания контактных площадок
#имена площадок должны соответствовать описанным в netlist
(iopad
#угловая площадка сверху слева
(topleft
(inst name="PAD_Corner1" cell=padIORINGCORNER orientation =
R270)
)
#площадки сверху
(top 
(inst name="pad_vdd1" cell=PADVDD)
(inst name="pad_clk0" cell=PADDI)
(inst name="pad_clk1" cell=PADDI)
(inst name="pad_clk2" cell=PADDI)
(inst name="pad_vdd2" cell=PADVDD)
)
#угловая площадка сверху справа
(topright
(inst name="PAD_Corner2" cell=padIORINGCORNER orientation =
R180)
)
#площадки справа
(right
(inst name="pad_output0" cell=PADDO)
(inst name="pad_output1" cell=PADDO)
(inst name="pad_output2" cell=PADDO)
(inst name="pad_vddior" cell=PADVDDIOR)
(inst name="pad_vssior" cell=PADVSSIOR)
)
#угловая площадка снизу справа
(bottomright
(inst name="PAD_Corner3" cell=padIORINGCORNER orientation =
R90)
)
#площадки снизу
(bottom
(inst name="pad_vss1" cell=PADVSS)
(inst name="pad_control0" cell=PADDI)
(inst name="pad_control1" cell=PADDI)
(inst name="pad_control2" cell=PADDI)
(inst name="pad_vss2" cell=PADVSS)
)
#угловая площадка снизу слева
(bottomleft
(inst name="PAD_Corner4" cell=padIORINGCORNER orientation = R0)
)
#площадки слева
(left
(inst name="pad_input0" cell=PADDI)
(inst name="pad_input1" cell=PADDI)
(inst name="pad_input2" cell=PADDI)
(inst name="pad_input3" cell=PADDI)
(inst name="pad_input4" cell=PADDI)
(inst name="pad_input5" cell=PADDI)
(inst name="pad_input6" cell=PADDI)
(inst name="pad_input7" cell=PADDI)
)
)
