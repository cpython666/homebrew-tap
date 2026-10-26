# 星笺 Starclip · Homebrew Tap

星笺维护的 Homebrew 安装源，提供本地剪贴历史与代码收藏桌面应用。软件源码：[cpython666/starclip](https://github.com/cpython666/starclip)。

## 安装

需要已安装 [Homebrew](https://brew.sh/)，目前仅支持 **Apple Silicon Mac（M 系列芯片），macOS 11 或以上**。

```sh
brew install --cask cpython666/tap/starclip
```

Homebrew 如提示信任此第三方安装源，请先核对仓库为 `cpython666/homebrew-tap` 和 Cask 内容。

当前提供 [v0.1.0-alpha.1 开发预览版](https://github.com/cpython666/starclip/releases/tag/v0.1.0-alpha.1)，应用内版本号为 0.1.0。它是已经公开的早期版本，不包含仍在开发中的 0.2.0 新功能。下载文件固定 SHA-256 校验；这是星笺维护的自有 Tap，不代表 Homebrew 官方主仓收录。

该预览包没有 Apple Developer 签名与公证，macOS 可能阻止首次打开；Homebrew 安装不会绕过系统安全检查。请在确认来源后按 macOS 提示处理，或等待后续正式签名版本。

如果 `/Applications/Starclip.app` 已经存在，请不要用 `--force` 覆盖正在使用的版本，尤其不要用预览包降级打开新版数据。已有应用可继续使用，待更高版本发布后再迁移到 Homebrew 管理。

## 更新与卸载

维护者发布并更新此 Tap 后，退出星笺再执行：

```sh
brew update
brew upgrade --cask cpython666/tap/starclip
```

卸载程序：

```sh
brew uninstall --cask cpython666/tap/starclip
```

此 Cask 不设置删除数据的 `zap` 或卸载脚本。普通升级、卸载只管理应用文件；不会主动删除剪贴历史、偏好、自定义数据目录或备份。数据迁移能力取决于所安装的应用版本，勿跨版本降级。

## 维护安装描述

1. 先在软件仓库发布可公开下载、已核验的安装包，保留原有 Release 附件。
2. 更新 `Casks/starclip.rb` 的版本、固定下载地址、SHA-256 和预览说明；有新 CPU 架构时再加入对应产物。
3. 运行 `brew style --cask cpython666/tap/starclip`、`brew audit --cask --strict --online cpython666/tap/starclip` 和 `brew fetch --cask cpython666/tap/starclip`，核对实际安装内容。当前 alpha 发布会触发 online audit 的 GitHub prerelease 提示；如实记录，不把它改标为稳定版。
4. 提交并推送此仓库，用户执行 `brew update` 后获得新版本定义。

Tap 使用 MIT 许可证。软件本身的许可和功能范围以源代码仓库及对应版本发布说明为准。
