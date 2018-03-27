# Problem 1005 7段译码器

## 题目描述
7 段数码管使用 7 个笔画来组成数字 0 - F ，设计电路来完成从数字到 7 个笔画的转换，即 7 段译码器。

![7段数码管的原理][segment]

## 输入描述
输入待译码的数字

## 输出描述
输出 7 位的译码结果

## 输入例子
x = 4'b0000

## 输出例子
(共阴极数码管)

{a, b, c, d, e, f, g} = 7'b111_1110

## 示例波形
![Problem 1005 4位2选1多路选择器的控制台输出][console]
![Problem 1004 4位2选1多路选择器的波形示意][wave]

----------
[segment]:./prb-1005-dec7seg-description-LED-Segment-Displays.png "7段数码管的原理图"
[console]:./prb-1005-dec7seg-console.png "Problem 1005 4位2选1多路选择器的控制台输出"
[wave]:./prb-1005-dec7seg-wave.svg "Problem 1005 4位2选1多路选择器的波形示意"
