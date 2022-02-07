(match-define (list #:deps mods ... #:body body ...) (read-args))
(for ([mod mods])
  (eval (call-trick mod #f)))
(define string-args (hash-ref parent-context 'string-args))
(apply values
       (for/last ([e body])
         (call-with-values (lambda () (eval e)) list)))
