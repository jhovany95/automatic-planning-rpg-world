(define (problem pb1) (:domain world)
(:objects
level1_1 level1_2 level1_3 - level 
level2_1 level2_2 level2_3 - level 
level3_1 level3_2 level3_3 - level 
level4_1 level4_2 level4_3 - level 
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
(adjacent level4_1 level3_1)
(adjacent level4_1 level4_2)
(adjacent level4_2 level3_2)
(adjacent level4_2 level4_1)
(adjacent level4_2 level4_3)
(adjacent level4_3 level3_3)
(adjacent level4_3 level4_2)

(player-at level1_1)

;celdas de bestias
(beast-at level1_3)
(beast-at level2_1)
(beast-at level2_2)

;celdas de dragones
(dragon-at level3_1)
(dragon-at level3_2)
(dragon-at level4_3)


; celdas con armas
(weapon-at level1_2)

; celdas con hechizos
(spell-at level3_3)


; celdas con trampa
(trap-at level4_2)
)

 (:goal (and 
 (player-at level4_1))
) 

) 
