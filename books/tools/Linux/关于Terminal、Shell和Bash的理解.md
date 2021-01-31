# 关于Terminal、Shell和Bash的理解

## Terminal

> Terminal ，终端。终端是计算机和用户交换信息的设备（物理意义上存在）。
>
> Linux下的终端一般是指**终端模拟程序**，这是与硬件无关的计算机程序。

## Shell

### 介绍

> Shell 常常运行在终端中，是操作系统内核和用户交互的接口程序，也就是语言翻译器。

### Shell 命令分类

#### 内建函数

> Shell 程序自带的命令。比如 `cd` 命令。

#### 可执行文件

> 可执行文件提供了 Shell 程序不支持的功能，通常需要安装。比如 `gcc` 命令、 `tree` 命令。

#### 别名

> 命令的简称。比如 `ll` 命令实际上是 `ls -l` 的别名。

## Bash

Bash ，全称 GNU Bourne-Again Shell 。Bash 是 Shell 的一种。前面说了 Shell 是一个计算机程序，根据实现的不同还有很多 Shell ，比如 sh, ksh, rsh, csh 等，其中 Bash 是 Linux 默认的 Shell ，常说的 Shell 编程指的是在某一特定的 Shell 环境编程（编写脚本），一般指 Bash 编程。

## Reference

[https://zh.wikipedia.org/wiki/%E7%B5%82%E7%AB%AF](https://zh.wikipedia.org/wiki/終端)

https://zhuanlan.zhihu.com/p/56532223