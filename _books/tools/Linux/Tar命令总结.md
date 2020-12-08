# tar 命令总结

## 选项

> * -c
>
>   create 创建归档文件
>
> * -x
>
>   extract 提取归档文件
>
> * -v
>
>   verbose 显示详情
>
> * -f
>
>   file 操作文件. 
>
> * -t
>
>   显示归档文件内容
>
> * -j
>
>   调用 bzip2
>
> * -z
>
>   调用 gzip
>
> * -r
>
>   追加/更新文件(夹)到已经存在的归档文件
>
> * -wildcards
>
>   通配符
>
> * -C
>
>   指定目录
>
> **注意**：
>
> * -f 选项是必须的，用来指定文件，没有的话命令将无法执行执行

## 例子

### 0. 

```shell
ame@LAPTOP-B4JLMD5L:/tmp$ ls
file_1  file_2  file_3  file_4  file_5
```



### 1. 创建.tar文件

```shell
ame@LAPTOP-B4JLMD5L:/tmp$ tar cvf e1.tar file_1 file_2 file_3
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tree
.
├── e1.tar
├── file_1
├── file_2
├── file_3
├── file_4
└── file_5

0 directories, 6 files
```

### 2. 创建.tar.gz/.tar.bz2文件

```shell
ame@LAPTOP-B4JLMD5L:/tmp$ tar cvfz e2.tar.gz file_1 file_2 file_3
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tar cvfj e2.tar.bz2 file_1 file_2 file_3
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tree
.
├── e1.tar
├── e2.tar.bz2
├── e2.tar.gz
├── file_1
├── file_2
├── file_3
├── file_4
└── file_5

0 directories, 8 files
```

### 3. 提取.tar/.tar.gz/.tar.bz2文件

```shell
ame@LAPTOP-B4JLMD5L:/tmp$ mkdir dir3
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e1.tar -C dir3
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tree
.
├── dir3
│   ├── file_1
│   ├── file_2
│   └── file_3
├── e1.tar
├── e2.tar.bz2
├── e2.tar.gz
├── file_1
├── file_2
├── file_3
├── file_4
└── file_5

1 directory, 11 files
ame@LAPTOP-B4JLMD5L:/tmp$ mkdir dir4.1
ame@LAPTOP-B4JLMD5L:/tmp$ mkdir dir4.2
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e2.tar.gz -C dir4.1
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e2.tar.bz2 -C dir4.2
file_2
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tree
.
├── dir3
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir4.1
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir4.2
│   ├── file_2
│   └── file_3
├── e1.tar
├── e2.tar.bz2
├── e2.tar.gz
├── file_1
├── file_2
├── file_3
├── file_4
└── file_5

3 directories, 16 files
```

### 4. 列出.tar/.tar.gz/.tar.bz2文件的内容

```shell
ame@LAPTOP-B4JLMD5L:/tmp$ tar tvf e1.tar 
-rw-rw-rw- ame/ame           7 2020-05-09 17:30 file_1
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_2
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_3

ame@LAPTOP-B4JLMD5L:/tmp$ tar tvf e2.tar.gz 
-rw-rw-rw- ame/ame           7 2020-05-09 17:30 file_1
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_2
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tar tvf e2.tar.bz2 
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_1
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_2
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_3
```

### 5. 从.tar/.tar.gz/.tar.bz2文件中提取(解压)特定(单个/多个)文件

```shell	
ame@LAPTOP-B4JLMD5L:/tmp$ mkdir dir7.1 dir7.2 dir7.3
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e1.tar -C dir7.1 file_1
file_1
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e2.tar.gz -C dir7.2 file_1 file_2
file_1
file_2
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e2.tar.bz2 -C dir7.3 file_1 file_2 file_3
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tree
.
├── dir3
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir4.1
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir4.2
│   ├── file_2
│   └── file_3
├── dir7.1
│   └── file_1
├── dir7.2
│   ├── file_1
│   └── file_2
├── dir7.3
│   ├── file_1
│   ├── file_2
│   └── file_3
├── e1.tar
├── e2.tar.bz2
├── e2.tar.gz
├── file_1
├── file_2
├── file_3
├── file_4
└── file_5

6 directories, 22 files
```

**注意:**

* -C选项应该放在文件名前面. 否则tar命令, 会认为-C是文件名. 

### 6. 按通配符从.tar/.tar.gz/.tar.bz2文件中提取(解压)特定文件

```shell
ame@LAPTOP-B4JLMD5L:/tmp$ mkdir dir8.1 dir8.2 dir8.3
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e1.tar -C dir8.1 --wildcards 'file*'
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e2.tar.gz -C dir8.2 --wildcards 'file*'
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tar xvf e2.tar.bz2 -C dir8.3 --wildcards 'file*'
file_1
file_2
file_3
ame@LAPTOP-B4JLMD5L:/tmp$ tree
.
├── dir3
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir4.1
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir4.2
│   ├── file_2
│   └── file_3
├── dir7.1
│   └── file_1
├── dir7.2
│   ├── file_1
│   └── file_2
├── dir7.3
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir8.1
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir8.2
│   ├── file_1
│   ├── file_2
│   └── file_3
├── dir8.3
│   ├── file_1
│   ├── file_2
│   └── file_3
├── e1.tar
├── e2.tar.bz2
├── e2.tar.gz
├── file_1
├── file_2
├── file_3
├── file_4
└── file_5

9 directories, 31 files
```

### 7. 追加文件/目录到.tar/.tar.gz/.tar.bz2文件

```shell
ame@LAPTOP-B4JLMD5L:/tmp$ tar cvf e9.tar file_1
file_1
ame@LAPTOP-B4JLMD5L:/tmp$ tar rvf e9.tar file_2
file_2
ame@LAPTOP-B4JLMD5L:/tmp$ tar rvf e9.tar file_3 file_4 
file_3
file_4
ame@LAPTOP-B4JLMD5L:/tmp$ tar rvf e9.tar file_3 dir3 file_5
file_3
dir3/
dir3/file_1
dir3/file_2
dir3/file_3
file_5
ame@LAPTOP-B4JLMD5L:/tmp$ tar tvf e9.tar 
-rw-rw-rw- ame/ame           7 2020-05-09 17:30 file_1
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_2
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_3
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_4
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_3
drwxrwxrwx ame/ame           0 2020-05-09 19:31 dir3/
-rw-rw-rw- ame/ame           7 2020-05-09 17:30 dir3/file_1
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 dir3/file_2
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 dir3/file_3
-rw-rw-rw- ame/ame           7 2020-05-09 17:31 file_5
```

### 8. 追加文件/目录到.tar.gz/.tar.bz2文件

不支持. 

## 参考

[1]. [https://www.tecmint.com/18-tar-command-examples-in-linux/](https://www.tecmint.com/18-tar-command-examples-in-linux/)