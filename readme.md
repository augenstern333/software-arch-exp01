# 实验01：软件配置管理

## 小组成员
- memberA：组长（请填写姓名和学号）
- memberB：张雨鑫，学号 2024110548，GitHub：zhangyuxin666
- memberC：组员（请填写姓名和学号）

## 操作记录
- memberA：创建项目说明，完成 SVN 服务器及仓库初始化。
- memberC：已从服务器 Checkout 工作副本，确认能正常拉取仓库内容。
- memberB：已同步组长提交的文件，完成修改并提交。

## 后续协作
1. memberB 更新此文件，追加自己的操作记录并提交。
2. memberC 更新此文件，确认 memberB 的修改已同步。
3. memberA 更新工作副本，通过 Show log 查看提交历史。

## GitHub 配置与 Git 团队协作

仓库地址：https://github.com/augenstern333/software-arch-exp01

### GitHub 配置要求
1. 团队成员使用各自的 GitHub 账号，团队人数为 2–5 人。
2. 仓库管理员邀请成员为 Collaborators，成员接受邀请。
3. 每位成员安装 GitHub Desktop 或其他 Git 客户端，并配置自己的提交姓名和邮箱。
4. 通过仓库 Issues 提出问题、讨论解决办法并记录结果。

### 同步、修改与提交

首次获取仓库：

```bash
git clone https://github.com/augenstern333/software-arch-exp01.git
cd software-arch-exp01
```

成员 A 创建并上传说明文件后，成员 B 在自己的工作副本中同步：

```bash
git switch main
git pull --ff-only origin main
```

成员 B 修改 readme.md，保留已有内容并追加自己的实际操作记录，然后提交：

```bash
git add readme.md
git diff --cached
git commit -m "docs: update Git collaboration notes"
git push origin main
```

其他成员在各自工作副本中同步并查看提交记录：

```bash
git pull --ff-only origin main
git log -5 --oneline
git status
```

打开 readme.md，确认已获得其他成员的修改。如推送被拒绝，先同步远程修改并解决冲突，再重新提交和推送，不使用强制推送覆盖成员记录。

### 本次修改
- 获取仓库已有 readme.md，保留原有 SVN 内容。
- 补充 GitHub 配置与 Git 协作操作说明。
- 使用本机配置的 Git 提交身份完成文档修改；最终结果以仓库实际提交历史为准。

### 待团队核验的实验材料
- 补全真实成员姓名、学号及 Collaborators 接受状态。
- 保存各成员客户端安装、克隆、修改提交与同步结果的截图。
- 使用各自账号在 Issues 中进行真实交流并保留链接。
- 本文说明不代表其他成员已完成同步、安装或 Issues 交流，需要本人实际操作。

## memberB 实际操作记录

- 操作人：张雨鑫（2024110548），角色 B，GitHub 账号 zhangyuxin666。
- 2026-10-20：本机 SVN 工作副本 `D:\SVNWork\Exp01` 已同步并修改 `readme.md`；工作副本元数据显示最后修改人为 `memberB`，修订号为 `r4`。2026-10-25 检查 `svn status` 和 `svn diff`，均无输出，文件无未提交修改。
- 2026-10-25：克隆本仓库，核对已有提交，保留 A/C 成员内容，填写 B 的真实身份并追加本节。
- GitHub 仓库权限核验：`zhangyuxin666` 已在 Collaborators 中，具有 push 权限；另有 `augenstern333` 与 `sijiama3-collab` 两位协作者。
- B 使用 `git pull --ff-only origin main` 同步，再执行 `git add readme.md`、`git diff --cached`、`git commit`、`git push origin main`。提交是否成功以 GitHub 历史及远程分支核验结果为准。
- Issues 核验入口：[#1 我们三个人的提交记录都在 GitHub 上能看到吗？](https://github.com/augenstern333/software-arch-exp01/issues/1)。三位协作者与三位提交作者是不同概念，需逐条核对实际提交历史。

### 交接给其他成员

其他成员在各自工作副本执行以下命令，打开本节核对 B 的姓名、学号和操作记录，再由本人确认同步结果：

```bash
git pull --ff-only origin main
git log -5 --format="%h %an %s"
git status --short
```

SVN 服务器 `https://10.94.149.140/svn/Exp01/trunk` 为原团队服务器；本次网络连接超时，保留了原工作副本 r4 的证据。SVNBucket 托管和本机 GitLab 部署已完成，见下方实际验证记录。

## SVNBucket 托管与 GitLab 部署结果

### SVNBucket

- 私有项目：`software_arch_exp01`，网页地址：https://svnbucket.com/detail/140975。
- SVN 地址：`svn://svn.svnbucket.com/Zhangyuxin666/software_arch_exp01/trunk/`。
- 本人账号 `Zhangyuxin666` 已完成检出、提交和独立目录复核；最终修订为 r4，包含 `readme.md` 和 `migration-verification.txt`。
- 新增工作副本 `D:\SVNWork\SVNBucket-Verify` 已更新到 r4，README 的 SHA256 与提交工作副本一致：`220296354E9E5E7B6D31142D78A252B571F34C5D030BBDCA81A19579E893E852`。
- 本次迁移原团队 SVN 工作副本的文件快照；原服务器的全部历史未迁移。中文提交说明使用 UTF-8 文件配合 `--file` 和 `--encoding UTF-8`，避免控制台编码影响。

### 本机 GitLab

- 本机已有 Docker Desktop，但后台启动在 `dockerInference` 处报错。保留其已有数据，另建 WSL2 发行版 `Exp01-GitLab`，使用 Linux Docker Engine 29.9.2 部署官方 `gitlab/gitlab-ce:19.5.1-ce.0`。
- 实例地址：`http://127.0.0.1:8929`；私有仓库：`http://127.0.0.1:8929/root/software-arch-exp01`。该地址供本机实验使用，其他电脑不能通过各自的 127.0.0.1 访问。
- 已推送团队 main 分支，保留团队提交历史，并在 `D:\SVNWork\GitLab-Verify` 独立克隆验证提交哈希和 README。部署配置保存在本仓库 `gitlab/compose.yaml`。
- GitLab 配置、日志及数据分别使用 Docker 持久卷，位于 `D:\SVNWork\gitlab-deploy\wsl` 下的 Linux 虚拟磁盘中。
- 本机启动脚本：`D:\SVNWork\gitlab-deploy\Start-GitLab.ps1`；停止脚本：`D:\SVNWork\gitlab-deploy\Stop-GitLab.ps1`。停止服务保留持久化数据。
- 登录信息仅保存在本机部署目录的独立文件中，未提交到仓库或写入报告。
