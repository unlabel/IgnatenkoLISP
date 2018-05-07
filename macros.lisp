
;2. Определите макрос (POP стек) , который читает из стека верхний эелемент и меняет значение переменной стека

(defmacro MPOP (stack)
`(let  ((first 0))
(setq first (car ,stack))
(setq ,stack (cdr ,stack))
first
))

;(setq st `(1 2 3 4 5 6 7))
;(1 2 3 4 5 6 7)
; (MPOP st)
;1
; (MPOP st)
;2
; (MPOP st)
;3





;4. Определите в виде макроса форму  (FIF тест отр нуль полож ) .

(defmacro fif(test neg zer pos)
`(cond (( = ,test 0) ,zer)
      ((< ,test 0) ,neg)
      (t ,pos)))



;(fif 3 `меньше `ноль `положительно)
;положительно
;(fif -3 `меньше `ноль `положительно)
;меньше
; (fif 0 `меньше `ноль `положительно)
;ноль
