;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;;Byte recompile to force emacs version compatibility
;; (byte-recompile-directory (expand-file-name "~/.emacs.d") 0)

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     osx
     auto-completion
     (html :variables
           css-indent-offset 2
           web-mode-code-indent-offset 2
           web-mode-markup-indent-offset 2
           web-mode-css-indent-offset 2)
     (javascript :variables
                 javascript-disable-tern-port-files nil)
     react
     better-defaults
     emacs-lisp
     clojure
     markdown
     (dash :variables
           dash-at-point-legacy-mode t)
     (git :variables
          git-gutter-use-fringe t
          git-magit-status-fullscreen nil
          git-enable-github-support t)
     (go :variables
         go-tab-width 4
         gofmt-command "goimports"
         go-use-gometalinter t)
     org
     spell-checking
     syntax-checking dotspacemacs-additional-packages '(base16-theme)
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

;; ;;; Fira code
;; ;;; Fira code;; This works when using emacs --daemon + emacsclient
;; (add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
;; ;; This works when using emacs without server/client
;; (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
;; ;; I haven't found one statement that makes both of the above situations work, so I use both for now

;; (defconst fira-code-font-lock-keywords-alist
;;   (mapcar (lambda (regex-char-pair)
;;             `(,(car regex-char-pair)
;;               (0 (prog1 ()
;;                    (compose-region (match-beginning 1)
;;                                    (match-end 1)
;;                                    ;; The first argument to concat is a string containing a literal tab
;;                                    ,(concat "	" (list (decode-char 'ucs (cadr regex-char-pair)))))))))
;;           '(("\\(www\\)"                   #Xe100)
;;             ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
;;             ("\\(\\*\\*\\*\\)"             #Xe102)
;;             ("\\(\\*\\*/\\)"               #Xe103)
;;             ("\\(\\*>\\)"                  #Xe104)
;;             ("[^*]\\(\\*/\\)"              #Xe105)
;;             ("\\(\\\\\\\\\\)"              #Xe106)
;;             ("\\(\\\\\\\\\\\\\\)"          #Xe107)
;;             ("\\({-\\)"                    #Xe108)
;;             ("\\(\\[\\]\\)"                #Xe109)
;;             ("\\(::\\)"                    #Xe10a)
;;             ("\\(:::\\)"                   #Xe10b)
;;             ("[^=]\\(:=\\)"                #Xe10c)
;;             ("\\(!!\\)"                    #Xe10d)
;;             ("\\(!=\\)"                    #Xe10e)
;;             ("\\(!==\\)"                   #Xe10f)
;;             ("\\(-}\\)"                    #Xe110)
;;             ("\\(--\\)"                    #Xe111)
;;             ("\\(---\\)"                   #Xe112)
;;             ("\\(-->\\)"                   #Xe113)
;;             ("[^-]\\(->\\)"                #Xe114)
;;             ("\\(->>\\)"                   #Xe115)
;;             ("\\(-<\\)"                    #Xe116)
;;             ("\\(-<<\\)"                   #Xe117)
;;             ("\\(-~\\)"                    #Xe118)
;;             ("\\(#{\\)"                    #Xe119)
;;             ("\\(#\\[\\)"                  #Xe11a)
;;             ("\\(##\\)"                    #Xe11b)
;;             ("\\(###\\)"                   #Xe11c)
;;             ("\\(####\\)"                  #Xe11d)
;;             ("\\(#(\\)"                    #Xe11e)
;;             ("\\(#\\?\\)"                  #Xe11f)
;;             ("\\(#_\\)"                    #Xe120)
;;             ("\\(#_(\\)"                   #Xe121)
;;             ("\\(\\.-\\)"                  #Xe122)
;;             ("\\(\\.=\\)"                  #Xe123)
;;             ("\\(\\.\\.\\)"                #Xe124)
;;             ("\\(\\.\\.<\\)"               #Xe125)
;;             ("\\(\\.\\.\\.\\)"             #Xe126)
;;             ("\\(\\?=\\)"                  #Xe127)
;;             ("\\(\\?\\?\\)"                #Xe128)
;;             ("\\(;;\\)"                    #Xe129)
;;             ("\\(/\\*\\)"                  #Xe12a)
;;             ("\\(/\\*\\*\\)"               #Xe12b)
;;             ("\\(/=\\)"                    #Xe12c)
;;             ("\\(/==\\)"                   #Xe12d)
;;             ("\\(/>\\)"                    #Xe12e)
;;             ("\\(//\\)"                    #Xe12f)
;;             ("\\(///\\)"                   #Xe130)
;;             ("\\(&&\\)"                    #Xe131)
;;             ("\\(||\\)"                    #Xe132)
;;             ("\\(||=\\)"                   #Xe133)
;;             ("[^|]\\(|=\\)"                #Xe134)
;;             ("\\(|>\\)"                    #Xe135)
;;             ("\\(\\^=\\)"                  #Xe136)
;;             ("\\(\\$>\\)"                  #Xe137)
;;             ("\\(\\+\\+\\)"                #Xe138)
;;             ("\\(\\+\\+\\+\\)"             #Xe139)
;;             ("\\(\\+>\\)"                  #Xe13a)
;;             ("\\(=:=\\)"                   #Xe13b)
;;             ("[^!/]\\(==\\)[^>]"           #Xe13c)
;;             ("\\(===\\)"                   #Xe13d)
;;             ("\\(==>\\)"                   #Xe13e)
;;             ("[^=]\\(=>\\)"                #Xe13f)
;;             ("\\(=>>\\)"                   #Xe140)
;;             ("\\(<=\\)"                    #Xe141)
;;             ("\\(=<<\\)"                   #Xe142)
;;             ("\\(=/=\\)"                   #Xe143)
;;             ("\\(>-\\)"                    #Xe144)
;;             ("\\(>=\\)"                    #Xe145)
;;             ("\\(>=>\\)"                   #Xe146)
;;             ("[^-=]\\(>>\\)"               #Xe147)
;;             ("\\(>>-\\)"                   #Xe148)
;;             ("\\(>>=\\)"                   #Xe149)
;;             ("\\(>>>\\)"                   #Xe14a)
;;             ("\\(<\\*\\)"                  #Xe14b)
;;             ("\\(<\\*>\\)"                 #Xe14c)
;;             ("\\(<|\\)"                    #Xe14d)
;;             ("\\(<|>\\)"                   #Xe14e)
;;             ("\\(<\\$\\)"                  #Xe14f)
;;             ("\\(<\\$>\\)"                 #Xe150)
;;             ("\\(<!--\\)"                  #Xe151)
;;             ("\\(<-\\)"                    #Xe152)
;;             ("\\(<--\\)"                   #Xe153)
;;             ("\\(<->\\)"                   #Xe154)
;;             ("\\(<\\+\\)"                  #Xe155)
;;             ("\\(<\\+>\\)"                 #Xe156)
;;             ("\\(<=\\)"                    #Xe157)
;;             ("\\(<==\\)"                   #Xe158)
;;             ("\\(<=>\\)"                   #Xe159)
;;             ("\\(<=<\\)"                   #Xe15a)
;;             ("\\(<>\\)"                    #Xe15b)
;;             ("[^-=]\\(<<\\)"               #Xe15c)
;;             ("\\(<<-\\)"                   #Xe15d)
;;             ("\\(<<=\\)"                   #Xe15e)
;;             ("\\(<<<\\)"                   #Xe15f)
;;             ("\\(<~\\)"                    #Xe160)
;;             ("\\(<~~\\)"                   #Xe161)
;;             ("\\(</\\)"                    #Xe162)
;;             ("\\(</>\\)"                   #Xe163)
;;             ("\\(~@\\)"                    #Xe164)
;;             ("\\(~-\\)"                    #Xe165)
;;             ("\\(~=\\)"                    #Xe166)
;;             ("\\(~>\\)"                    #Xe167)
;;             ("[^<]\\(~~\\)"                #Xe168)
;;             ("\\(~~>\\)"                   #Xe169)
;;             ("\\(%%\\)"                    #Xe16a)
;;            ;; ("\\(x\\)"                   #Xe16b) This ended up being hard to do properly so i'm leaving it out.
;;             ("[^:=]\\(:\\)[^:=]"           #Xe16c)
;;             ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
;;             ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f))))

;; (defun add-fira-code-symbol-keywords ()
;;   (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

;; (add-hook 'prog-mode-hook
;;           #'add-fira-code-symbol-keywords)

;; (set-language-environment "UTF-8")
;; (set-default-coding-systems 'utf-8)
;; (mac-auto-operator-composition-mode)

;;Clojure cookbook
(defun increment-clojure-cookbook ()
  "When reading the Clojure cookbook, find the next section, and
close the buffer. If the next section is a sub-directory or in
the next chapter, open Dired so you can find it manually."
  (interactive)
  (let* ((cur (buffer-name))
         (split-cur (split-string cur "[-_]"))
         (chap (car split-cur))
         (rec (car (cdr split-cur)))
         (rec-num (string-to-number rec))
         (next-rec-num (1+ rec-num))
         (next-rec-s (number-to-string next-rec-num))
         (next-rec (if (< next-rec-num 10)
                       (concat "0" next-rec-s)
                     next-rec-s))
         (target (file-name-completion (concat chap "-" next-rec) "")))
    (progn 
      (if (equal target nil)
          (dired (file-name-directory (buffer-file-name)))
        (find-file target))
      (kill-buffer cur))))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;;Reading adoc files
  (require 'adoc-mode)
  (setq auto-mode-alist (append '(("\\.asciidoc$" . adoc-mode))
                                auto-mode-alist))

  ;; Add icon support for neotree
  ;; Don't forget to install the fonts https://github.com/domtronn/all-the-icons.el
  (require 'all-the-icons)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)
        neo-banner-message "")

  ;; Add all-the-icons to dired-mode
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

  ;; Disabling js2 mode errors & warnings
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil)

  ;;Clojure cookbook
  (define-key adoc-mode-map (kbd "M-+") 'increment-clojure-cookbook)

  ;;JS mode
  (setq-default js2-basic-offset 2)
  (setq-default js-indent-level 2)

  ;;Clojure cider warnings
  (setq cljr-suppress-middleware-warnings t)

  ;;Themes
  (setq-default dotspacemacs-themes '(darktooth))

  (setq clojure-enable-fancify-symbols t)
  ;;(spacemacs/set-font "PragmataPro Mono" 12)

  ;;Duplify lines
  (global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

  ;;Paredit
  (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook          #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook           #'enable-paredit-mode)
  )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

     version-control
     gtags
     git
     github
     markdown
     (python :variables
             python-sort-imports-on-save t
             python-enable-yapf-format-on-save t
             python-test-runner '(pytest nose))
     asciidoc
     yalm
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; dotspacemacs-additional-packages '()
   dotspacemacs-additional-packages '(base16-theme
                                      atom-one-dark-theme
                                      graphql-mode
                                      ng2-mode
                                      all-the-icons
                                      all-the-icons-dired
                                      oneonone
                                      dracula-theme
                                      solarized-theme)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ;;base 16 themes, see
   ;; https://github.com/chriskempson/base16
   ;; https://github.com/belak/base16-emacs
   ;; https://github.com/syl20bnr/spacemacs/issues/1851 
   dotspacemacs-additional-packages '(base16-theme)
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

;; ;;; Fira code
;; ;;; Fira code;; This works when using emacs --daemon + emacsclient
;; (add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
;; ;; This works when using emacs without server/client
;; (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
;; ;; I haven't found one statement that makes both of the above situations work, so I use both for now

;; (defconst fira-code-font-lock-keywords-alist
;;   (mapcar (lambda (regex-char-pair)
;;             `(,(car regex-char-pair)
;;               (0 (prog1 ()
;;                    (compose-region (match-beginning 1)
;;                                    (match-end 1)
;;                                    ;; The first argument to concat is a string containing a literal tab
;;                                    ,(concat "	" (list (decode-char 'ucs (cadr regex-char-pair)))))))))
;;           '(("\\(www\\)"                   #Xe100)
;;             ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
;;             ("\\(\\*\\*\\*\\)"             #Xe102)
;;             ("\\(\\*\\*/\\)"               #Xe103)
;;             ("\\(\\*>\\)"                  #Xe104)
;;             ("[^*]\\(\\*/\\)"              #Xe105)
;;             ("\\(\\\\\\\\\\)"              #Xe106)
;;             ("\\(\\\\\\\\\\\\\\)"          #Xe107)
;;             ("\\({-\\)"                    #Xe108)
;;             ("\\(\\[\\]\\)"                #Xe109)
;;             ("\\(::\\)"                    #Xe10a)
;;             ("\\(:::\\)"                   #Xe10b)
;;             ("[^=]\\(:=\\)"                #Xe10c)
;;             ("\\(!!\\)"                    #Xe10d)
;;             ("\\(!=\\)"                    #Xe10e)
;;             ("\\(!==\\)"                   #Xe10f)
;;             ("\\(-}\\)"                    #Xe110)
;;             ("\\(--\\)"                    #Xe111)
;;             ("\\(---\\)"                   #Xe112)
;;             ("\\(-->\\)"                   #Xe113)
;;             ("[^-]\\(->\\)"                #Xe114)
;;             ("\\(->>\\)"                   #Xe115)
;;             ("\\(-<\\)"                    #Xe116)
;;             ("\\(-<<\\)"                   #Xe117)
;;             ("\\(-~\\)"                    #Xe118)
;;             ("\\(#{\\)"                    #Xe119)
;;             ("\\(#\\[\\)"                  #Xe11a)
;;             ("\\(##\\)"                    #Xe11b)
;;             ("\\(###\\)"                   #Xe11c)
;;             ("\\(####\\)"                  #Xe11d)
;;             ("\\(#(\\)"                    #Xe11e)
;;             ("\\(#\\?\\)"                  #Xe11f)
;;             ("\\(#_\\)"                    #Xe120)
;;             ("\\(#_(\\)"                   #Xe121)
;;             ("\\(\\.-\\)"                  #Xe122)
;;             ("\\(\\.=\\)"                  #Xe123)
;;             ("\\(\\.\\.\\)"                #Xe124)
;;             ("\\(\\.\\.<\\)"               #Xe125)
;;             ("\\(\\.\\.\\.\\)"             #Xe126)
;;             ("\\(\\?=\\)"                  #Xe127)
;;             ("\\(\\?\\?\\)"                #Xe128)
;;             ("\\(;;\\)"                    #Xe129)
;;             ("\\(/\\*\\)"                  #Xe12a)
;;             ("\\(/\\*\\*\\)"               #Xe12b)
;;             ("\\(/=\\)"                    #Xe12c)
;;             ("\\(/==\\)"                   #Xe12d)
;;             ("\\(/>\\)"                    #Xe12e)
;;             ("\\(//\\)"                    #Xe12f)
;;             ("\\(///\\)"                   #Xe130)
;;             ("\\(&&\\)"                    #Xe131)
;;             ("\\(||\\)"                    #Xe132)
;;             ("\\(||=\\)"                   #Xe133)
;;             ("[^|]\\(|=\\)"                #Xe134)
;;             ("\\(|>\\)"                    #Xe135)
;;             ("\\(\\^=\\)"                  #Xe136)
;;             ("\\(\\$>\\)"                  #Xe137)
;;             ("\\(\\+\\+\\)"                #Xe138)
;;             ("\\(\\+\\+\\+\\)"             #Xe139)
;;             ("\\(\\+>\\)"                  #Xe13a)
;;             ("\\(=:=\\)"                   #Xe13b)
;;             ("[^!/]\\(==\\)[^>]"           #Xe13c)
;;             ("\\(===\\)"                   #Xe13d)
;;             ("\\(==>\\)"                   #Xe13e)
;;             ("[^=]\\(=>\\)"                #Xe13f)
;;             ("\\(=>>\\)"                   #Xe140)
;;             ("\\(<=\\)"                    #Xe141)
;;             ("\\(=<<\\)"                   #Xe142)
;;             ("\\(=/=\\)"                   #Xe143)
;;             ("\\(>-\\)"                    #Xe144)
;;             ("\\(>=\\)"                    #Xe145)
;;             ("\\(>=>\\)"                   #Xe146)
;;             ("[^-=]\\(>>\\)"               #Xe147)
;;             ("\\(>>-\\)"                   #Xe148)
;;             ("\\(>>=\\)"                   #Xe149)
;;             ("\\(>>>\\)"                   #Xe14a)
;;             ("\\(<\\*\\)"                  #Xe14b)
;;             ("\\(<\\*>\\)"                 #Xe14c)
;;             ("\\(<|\\)"                    #Xe14d)
;;             ("\\(<|>\\)"                   #Xe14e)
;;             ("\\(<\\$\\)"                  #Xe14f)
;;             ("\\(<\\$>\\)"                 #Xe150)
;;             ("\\(<!--\\)"                  #Xe151)
;;             ("\\(<-\\)"                    #Xe152)
;;             ("\\(<--\\)"                   #Xe153)
;;             ("\\(<->\\)"                   #Xe154)
;;             ("\\(<\\+\\)"                  #Xe155)
;;             ("\\(<\\+>\\)"                 #Xe156)
;;             ("\\(<=\\)"                    #Xe157)
;;             ("\\(<==\\)"                   #Xe158)
;;             ("\\(<=>\\)"                   #Xe159)
;;             ("\\(<=<\\)"                   #Xe15a)
;;             ("\\(<>\\)"                    #Xe15b)
;;             ("[^-=]\\(<<\\)"               #Xe15c)
;;             ("\\(<<-\\)"                   #Xe15d)
;;             ("\\(<<=\\)"                   #Xe15e)
;;             ("\\(<<<\\)"                   #Xe15f)
;;             ("\\(<~\\)"                    #Xe160)
;;             ("\\(<~~\\)"                   #Xe161)
;;             ("\\(</\\)"                    #Xe162)
;;             ("\\(</>\\)"                   #Xe163)
;;             ("\\(~@\\)"                    #Xe164)
;;             ("\\(~-\\)"                    #Xe165)
;;             ("\\(~=\\)"                    #Xe166)
;;             ("\\(~>\\)"                    #Xe167)
;;             ("[^<]\\(~~\\)"                #Xe168)
;;             ("\\(~~>\\)"                   #Xe169)
;;             ("\\(%%\\)"                    #Xe16a)
;;            ;; ("\\(x\\)"                   #Xe16b) This ended up being hard to do properly so i'm leaving it out.
;;             ("[^:=]\\(:\\)[^:=]"           #Xe16c)
;;             ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
;;             ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f))))

;; (defun add-fira-code-symbol-keywords ()
;;   (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

;; (add-hook 'prog-mode-hook
;;           #'add-fira-code-symbol-keywords)

;; (set-language-environment "UTF-8")
;; (set-default-coding-systems 'utf-8)
;; (mac-auto-operator-composition-mode)

;;Clojure cookbook
(defun increment-clojure-cookbook ()
  "When reading the Clojure cookbook, find the next section, and
close the buffer. If the next section is a sub-directory or in
the next chapter, open Dired so you can find it manually."
  (interactive)
  (let* ((cur (buffer-name))
         (split-cur (split-string cur "[-_]"))
         (chap (car split-cur))
         (rec (car (cdr split-cur)))
         (rec-num (string-to-number rec))
         (next-rec-num (1+ rec-num))
         (next-rec-s (number-to-string next-rec-num))
         (next-rec (if (< next-rec-num 10)
                       (concat "0" next-rec-s)
                     next-rec-s))
         (target (file-name-completion (concat chap "-" next-rec) "")))
    (progn 
      (if (equal target nil)
          (dired (file-name-directory (buffer-file-name)))
        (find-file target))
      (kill-buffer cur))))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;;Reading adoc files
  (require 'adoc-mode)
  (setq auto-mode-alist (append '(("\\.asciidoc$" . adoc-mode))
                                auto-mode-alist))

  ;; Add icon support for neotree
  ;; Don't forget to install the fonts https://github.com/domtronn/all-the-icons.el
  (require 'all-the-icons)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)
        neo-banner-message "")

  ;; Add all-the-icons to dired-mode
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

  ;; Disabling js2 mode errors & warnings
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil)

  ;;Clojure cookbook
  (define-key adoc-mode-map (kbd "M-+") 'increment-clojure-cookbook)

  ;;JS mode
  (setq-default js2-basic-offset 2)
  (setq-default js-indent-level 2)

  ;;Clojure cider warnings
  (setq cljr-suppress-middleware-warnings t)

  ;;Themes
  (setq-default dotspacemacs-themes '(darktooth))

  (setq clojure-enable-fancify-symbols t)
  ;;(spacemacs/set-font "PragmataPro Mono" 12)

  ;;Duplify lines
  (global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

  ;;Paredit
  (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
  (add-hook 'clojure-mode-hook          #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook           #'enable-paredit-mode)
  )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("7bfd38733dc58478d2104c30114022a88ddb92540fa4fb7516f79e55967a348d" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(package-selected-packages
   (quote
    (org-mime solarized-theme oneonone hexrgb ng2-mode typescript-mode graphql-mode dracula-theme atom-one-dark-theme all-the-icons-dired all-the-icons memoize font-lock+ ghub let-alist magit-gh-pulls github-search github-clone github-browse-file gist gh marshal logito ht org-category-capture yaml-mode gntp parent-mode gitignore-mode fringe-helper git-gutter+ pos-tip flx evil-unimpaired goto-chg edn peg eval-sexp-fu queue pkg-info epl popup diminish yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode helm-pydoc cython-mode company-anaconda anaconda-mode pythonic base16-theme winum unfill fuzzy paredit log4e packed adoc-mode markup-faces bind-key bind-map powerline spinner org highlight pcache projectile go-eldoc git-gutter iedit company-go hydra inflections multiple-cursors cider seq clojure-mode yasnippet auto-complete company anzu smartparens evil undo-tree flycheck go-mode request helm helm-core avy markdown-mode alert magit magit-popup git-commit with-editor async dash s hide-comnt go-guru uuidgen pug-mode osx-dictionary org-projectile org-download mwim livid-mode skewer-mode simple-httpd link-hint git-link flyspell-correct-helm flyspell-correct flycheck-gometalinter eyebrowse evil-visual-mark-mode evil-ediff dumb-jump f column-enforce-mode clojure-snippets darktooth-theme xkcd web-mode web-beautify tagedit slim-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder rbenv pbcopy osx-trash lua-mode less-css-mode launchctl json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc jade-mode helm-gtags helm-css-scss haml-mode ggtags emmet-mode company-web web-completion-data company-tern dash-functional tern coffee-mode chruby bundler inf-ruby helm-dash dash-at-point xterm-color ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe use-package toc-org spacemacs-theme spaceline smooth-scrolling smeargle shell-pop restart-emacs rainbow-delimiters quelpa popwin persp-mode pcre2el paradox page-break-lines orgit org-repo-todo org-present org-pomodoro org-plus-contrib org-bullets open-junk-file neotree multi-term move-text mmm-mode markdown-toc magit-gitflow macrostep lorem-ipsum linum-relative leuven-theme info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flyspell helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-gutter-fringe git-gutter-fringe+ gh-md flycheck-pos-tip flx-ido fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eshell-prompt-extras esh-help elisp-slime-nav diff-hl define-word company-statistics company-quickhelp clj-refactor clean-aindent-mode cider-eval-sexp-fu buffer-move bracketed-paste auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(safe-local-variable-values
   (quote
    ((eval when
           (fboundp
            (quote rainbow-mode))
           (rainbow-mode 1))
     (no-bytpe-compile . t)))))
;; ;;Dash configurations https://github.com/stanaka/dash-at-point#readme
;; (add-to-list 'load-path "/Users/adolfo/.emacs.d/elpa/dash-20160619.611")
;; (autoload 'dash-at-point "dash-at-point"
;;   "Search the word at point with Dash." t nil)
;; (global-set-key "\C-cd" 'dash)
;; (global-set-key "\C-ce" 'dash-at-point-with-docset)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
  
