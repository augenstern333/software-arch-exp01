# 实验01：软件配置管理

## 小组成员
- memberA：组长（请填写姓名和学号）
- memberB：组员（请填写姓名和学号）
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
