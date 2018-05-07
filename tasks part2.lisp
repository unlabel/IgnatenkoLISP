;2.Определите функицонал (MAPLIST fn список) для одного списочного аргумента

(defun maplistf (fn list)
  (cond ((null list) nil)
        (t  (fn (list)
               (maplistf fn (cdr list))))))


;(maplistf (lambda (x) (* x x)) '(5 7 9))
;(25 49 81)
;(maplistf (lambda (x) (+ 2 x)) '(5 7 9))
;(7 9 11)
;(maplistf `atom '(5 7 9))
;(T T T)




;4.Определите функциональный предикат (КАЖДЫй пред список), который исти-
;нен в том и только в том случае, когда, являющейся функциональным аргу-
;ментом предикат пред истинен для всех элементов списка список

(defun ever(fn list)
  (not (member nil (mapcar fn list))))

;(ever `atom `(1 2 3 (2 3)))
;NIL
; (ever `atom `(1 2 3 2 3))
;T







;6. Определите фильтр (УДАЛйЬ-ЕСЛИ пред список), удаляющий из списка список
;все элементы, которые обладают свойством, наличие которого проверяет предикат пред.

(defun deleteif(fn list)
(mapcan (lambda (x) (if (funcall fn x)  nil (list x) )) list))

;(deleteif `null `(T T T NIL T T NIL NIL))
;(T T T T T)
;(deleteif `evenp `(1 2 3 4 5 6))
;(1 3 5)
;(deleteif `atom `(1 2 (3 4) 5 6 (7 8 9) 10))
;((3 4) (7 8 9))





;8. Напишите генератор натуральных чисел: 0, 1, 2, 3, 4, 5, ...

(defun gen-netural-number()
(let ((x 0))
(lambda () (setq x (+ x 1)))))

(setq g1 (gen-netural-number))

(funcall g1)


;(funcall g1)
;1
;(funcall g1)
;2
;(funcall g1)
;3




;10. Напишите генератор, порождающий последовательность (A), (B A), (A B A),
;(B A B A), ..

(defun genAB()
(let ((x (list `A)))
(lambda() (cond ((eq (car x) `A) (setq x (cons `B x)))
                (t (setq x (cons `A x)))))))

(setq g1 (genAB))

(funcall g1)

;(funcall g1)
;(B A)
;(funcall g1)
;(A B A)
;(funcall g1)
;(B A B A)





;12. Определите функцию, которая возвращает в качестве значения свой вызов


(defun self(x)
(list `self (list `quote x)))


;(self `(1 2 3))
;(SELF (QUOTE (1 2 3)))
;(SELF (QUOTE (1 2 3)))
;(SELF (QUOTE (1 2 3)))