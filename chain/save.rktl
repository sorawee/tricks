`(module ,(string->symbol (hash-ref parent-context 'trick-name))
   ,@(read-args))
