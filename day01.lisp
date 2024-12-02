(defun solve-part1 (left right)
  (let ((l (sort left #'<))
        (r (sort right #'<)))
    (loop for i from 0 to (1- (length l))
            sum (abs (- (nth i l) (nth i r))))))

(defun solve-part2 (left right)
  (let ((h (make-hash-table)))
    (loop for r in right
          do (if (gethash r h)
                 (incf (gethash r h))
                 (setf (gethash r h) 1)))
    (loop for l in left
          sum (* l (or (gethash l h) 0)))))

(let (left right)
  (loop for i from 0 to (1- (length *input*))
        do (if (= (mod i 2) 0)
               (setf left (append left (list (nth i *input*))))
               (setf right (append right (list (nth i *input*))))))
  (values
   (solve-part1 left right)
   (solve-part2 left right)))
