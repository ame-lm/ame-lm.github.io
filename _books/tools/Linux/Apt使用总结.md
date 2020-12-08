# apt 使用总结

## 简介

apt Advanced Package Tool。是ubuntu的包管理工具。是apt-get和apt-cache等工具的更上一层封装。

## 源

apt的源位于/etc/apt/source.list文件中，默认源在国内环境很慢，可以选择代理或者更换国内源（比如清华源）。

## 常见用法

> ``` shell
> apt search pkg-name
> ```
>
> 搜索包

---

> ``` shell
> apt show pkg-name
> ```
>
> 显示包的信息

---

> ``` shell
> apt list
> ```
>
> 列出所有的包（源中所有包，包括未安装的）。
>
> **可选项**：
>
> * `--installed`
>
>   列出已经安装的包。
>
> * `--upgradable`
>
>   列出可更新的包。

---

> ``` shell
> apt update
> ```
>
> 更新索引

---

> ``` shell
> apt upgrade
> ```
>
> 更新所有可更新包。
>
> **可选项**：
>
> * `pkg-name`
>
>   更新指定包
>
> **注意**：
>
> * 包在以下情况下不会更新：
>   * 新包和某个旧包冲突
>   * 系统不满足新包的依赖
>   * 新包、旧包无法共存

---

> ``` shell
> apt full-upgrade
> ```
>
> 同 `apt upgrade` ，但是必要时可以移除旧包

---

> ``` shell
> apt install pkg-name
> ```
>
> 安装包。
>
> **可选项**：
>
> * =version
>
>   指定版本

---

> ``` shell
> apt remove pkg-name
> ```
>
> 移除包，保留配置文件。

---

> ``` shell
> apt purge pkg-name
> ```
>
> 移除包和配置文件。

---

> ``` shell
> apt autoremove
> ```
>
> 自动移除不需要的包

