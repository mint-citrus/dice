(defun prompt (x)
  (format *query-io* x)
  (force-output *query-io*)
  (read-line *query-io*))

(defun random-pick (x)
  (nth (random (length x)) x))

(defun main ()
  (setq input nil)
  (format t "Input Options (q to end)")
  (loop
    (let ((tmp  (prompt ">")))
      (if (string= tmp "q")
	      (return)
	      (setq input (append input (list tmp))))))
  (format t (random-pick input)))

(main)
