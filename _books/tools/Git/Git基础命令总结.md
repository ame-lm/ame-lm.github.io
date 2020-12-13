# Git 基础命令总结

## 基本操作

```` shell
git init [path]
````

> * **初始化仓库**： path 默认值为当前目录。

``` shell 
git add [files]
```

> * **跟踪**：将文件从 Untracked 状态变为 Tracked 状态。
> * **暂存**：将文件从 Unstaged 状态变为 Staged 状态。

``` shell
git commit -m "..."
```

> * **提交**：将文件从 Staged 状态变为 commited 状态（提交到仓库中）。

``` shell
git status
```

> * **状态**：显示仓库中文件的 Git 状态。

## 版本控制

### 查看历史信息

``` shell
git log
```

> * 显示 HEAD 指针，及其先祖的 commit 记录历史。
>
> * `--pretty=oneline` 选项可以显示简略版本信息。

``` shell
git reflog
```

> 显示 HEAD 指针的指向记录历史。

### 版本穿梭

``` shell
git reset --hard (HEAD^/commit_id)
```

> * 穿梭到相应的版本. 通常可以搭配 `git log ` 和 `git reflog` 使用。
> * HEAD, HEAD^, HEAD^^... ，表示指向当前版本、上一个版本、上两个版本... 。

``` shell
git restore [files]
```

> * 丢弃修改，将文件从 Unstaged 状态，变回上一个状态 (可能是 Staged 状态也可能是（ commited 状态）。
> * 可以用 `git checkout -- [files]` 达到相同的效果, 但是不建议。
> * `--stated` 选项可以将 Staged 状态的文件，变回 commited 状态。
>   * 可以用 `git reset HEAD <fiels>` 达到相同的效果, 但是不建议。

## 远程仓库管理

``` shell
git clone url [dir]
```

> * 克隆远程仓库，改名是可选的。

``` shell
git remote add remote url
git remote rm remote url
```

> * 关联远程仓库和解除关联。
> * 例子：`git remote add https://github.com/ame-lm/hi`。

``` shell
git push remote local_branch:remote_branch
git fetch remote remote_branch:local_branch
```

> * 推送分支和取回分支。
> * 取回时，默认取回至 FETCH_HEAD 分支。

``` shell 
git pull remote remote_branch:local_branch
```

> * `pull` = `fetch` + `merge` 
> * 不建议使用 `pull`，建议使用 `fetch` + `merge`

## 分支管理

``` shell
git branch
```

> * 显示所有分支。

``` shell
git branch br-name
```

> * 新建分支（默认基于当前分支）。

``` shell
git branch -m old-br new-br
```

> * move ，移动分支。常用于改名。
> * `-M` 表示强制移动。

``` shell
git branch -d br-name
```

> * 删除分支。
> * `-D` 表示强制删除。

``` shell
git branch -c old-br new-br
```

> * copy ，复制分支。常用于创建新的分支。
> * `-C` 表示强制复制。

``` shell
git switch br-name
git checkout br-name
```

> * 切换分支。

``` shell
git merge br-name
```

> * 合并分支
> * `git merge --abort` 表示取消本次合并（被打断时使用）。
> * `git merge --continuew` 表示继续本次合并（被打断时使用）。

``` shell
git stash
git stash apply
```

> * 暂存工作区和恢复工作区。
