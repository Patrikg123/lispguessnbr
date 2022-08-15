(setf *random-state* (make-random-state t))
(defvar seed (random 3))
(defvar thenumber (+ seed 1))
(defvar stopit 0)
(defun testnumber(n)(if(= n thenumber)
                               (guessiscorrect)
							   (guessisnotcorrect n)
							   )
							   )
							   
(defun guessisnotcorrect(n)(if(> n thenumber)
                               (print "lower")
							   (print "higher"))
							   (setq stopit 0))
(defun guessiscorrect()(print "correct")(setq stopit 1))
	                                     

(loop 
do (print "Guess the number: ")
(setq guess(read))
(testnumber guess)





until (= stopit 1)

)
