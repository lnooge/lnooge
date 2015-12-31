; org-mode模式支持的编程语言
(org-babel-do-load-languages
  'org-babel-load-languages
  '(
    (sh . t)
    (python . t)
    (R . t)
    (ruby . t)
    (ditaa . t)
    (dot . t)
    (octave . t)
    (sqlite . t)
    (perl . t)
    (C . t)
    ))

;; 配置package的源
(require 'package)

;; 添加软件源地址
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; 初始化
(package-initialize)

;; 不显示工具栏
(tool-bar-mode 0)
;; 不显示菜单栏
(menu-bar-mode 0)
;; 不显示滚动条
(scroll-bar-mode 0)
;; 显示行号与列号
(global-linum-mode 1)
(column-number-mode 1)

;; 关闭启动动画
(setq inhibit-startup-message 1)

;; 设置初始工作目录
(if (string-equal system-type "gnu/linux")
    (setq default-directory "~/")
  (setq default-directory "~/work"))

;; 设置问答提示为 y-or-n,而不是yes-or-no
(fset 'yes-or-no-p 'y-or-n-p)

;; 不生成备份文件，即xxxx.xx~
(setq make-backup-files nil)

;; ido插件在mini buffer中显示最近用过的命令或文件
(ido-mode 1)
