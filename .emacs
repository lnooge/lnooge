;; 配置package的源
(require 'package)
;; 添加地址源
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))


;; 初始化package
(package-initialize)

;; 加载material主题
(load-theme 'material t)
;; 不显示工具栏
(tool-bar-mode 0)
;; 不显示菜单栏
(menu-bar-mode 0)
;; 不显示滚动条
(scroll-bar-mode 0)
;; 显示行号与列号
(global-linum-mode 1)
(column-number-mode 1)

;; 关闭启动界面
(setq inhibit-startup-message 1)

;; 不生成备份文件xxx.xx~
(setq make-backup-files nil)

;; 启用ido插件功能
(ido-mode 1)


