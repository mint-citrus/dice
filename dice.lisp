(defun prompt (x)
  (format *query-io* x)
  (force-output *query-io*)
  (read-line *query-io*))

(defun main ()
  ;; TODO:
  ;; user input -> parse & list -> random choice then output
  )
