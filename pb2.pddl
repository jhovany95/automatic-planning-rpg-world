(define (problem pb2) (:domain world)
(:objects
level1_1 level1_2 level1_3 level1_4 - level 
level2_1 level2_2 level2_3 level2_4 - level 
level3_1 level3_2 level3_3 level3_4 - level 
level4_1 level4_2 level4_3 level4_4 - level 
)
(:init
; celdas adyacentes
(adjacent level1_1 level1_2)
(adjacent level1_1 level2_1)
(adjacent level1_2 level1_3)
(adjacent level1_2 level2_2)
(adjacent level1_2 level1_1)
(adjacent level1_3 level2_3)
(adjacent level1_3 level1_2)
(adjacent level1_3 level1_4)
(adjacent level1_4 level1_3)
(adjacent level1_4 level2_4)
(adjacent level2_1 level1_1)
(adjacent level2_1 level2_2)
(adjacent level2_1 level3_1)
(adjacent level2_2 level1_2)
(adjacent level2_2 level2_1)
(adjacent level2_2 level3_2)
(adjacent level2_2 level2_3)
(adjacent level2_3 level1_3)
(adjacent level2_3 level3_3)
(adjacent level2_3 level2_2)
(adjacent level2_3 level2_4)
(adjacent level2_4 level1_4)
(adjacent level2_4 level2_3)
(adjacent level2_4 level3_4)
(adjacent level3_1 level2_1)
(adjacent level3_1 level3_2)
(adjacent level3_1 level4_1)
(adjacent level3_2 level2_2)
(adjacent level3_2 level3_1)
(adjacent level3_2 level4_2)
(adjacent level3_2 level3_3)
(adjacent level3_3 level2_3)
(adjacent level3_3 level4_3)
(adjacent level3_3 level3_2)
(adjacent level3_3 level3_4)
(adjacent level3_4 level2_4)
(adjacent level3_4 level3_3)
(adjacent level3_4 level4_4)
(adjacent level4_1 level3_1)
(adjacent level4_1 level4_2)
(adjacent level4_2 level3_2)
(adjacent level4_2 level4_1)
(adjacent level4_2 level4_3)
(adjacent level4_3 level3_3)
(adjacent level4_3 level4_2)
(adjacent level4_3 level4_4)
(adjacent level4_4 level3_4)
(adjacent level4_4 level4_3)

(player-at level1_2)

;celdas de bestias
(beast-at level2_2)
(beast-at level2_3)
(beast-at level2_4)
(beast-at level4_1)

;celdas de dragones
(dragon-at level2_1)
(dragon-at level3_2)
(dragon-at level3_4)


; celdas con armas
(weapon-at level1_3)

; celdas con hechizos
(spell-at level1_1)


; celdas con trampa
(trap-at level3_1)
(trap-at level3_3)
(trap-at level4_2)
)

 (:goal (and 
 (player-at level4_4))
) 

) 
