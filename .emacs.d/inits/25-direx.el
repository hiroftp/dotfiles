;direx popwin
(require 'direx)
(require 'direx-project)
(require 'popwin)

;gitのプロジェクトであればgitのルートからのツリーを表示し、そうでなければdirexを呼び出す
;thanks http://shibayu36.hatenablog.com/entry/2013/02/12/191459
(defun direx:jump-to-project-directory ()
  (interactive)
  (let ((result (ignore-errors
                  (direx-project:jump-to-project-root-other-window)
                  t)))
    (unless result
      (direx:jump-to-directory-other-window))))

(push '(direx:direx-mode :position left :width 30 :dedicated t)
      popwin:special-display-config)
