(define (domain world)
    (:requirements :typing)
    (:types 
       level 
    )
    (:predicates
        (player-at ?level - level)
        (equipped-weapon)
        (equipped-spell)
        (beast-at  ?level - level)
        (dragon-at  ?level - level)
        (trap-at ?level - level)
        (weapon-at ?level)
        (spell-at ?level)
        (adjacent ?level1 ?level2 - level)
        (level_destroyed ?level - level)
    )
  ; player moves without weapon 
  (:action move
    :parameters (?level1 ?level2 - level)
    :precondition (and
      (adjacent ?level1 ?level2)
      (player-at ?level1)
      (not (level_destroyed ?level2))
      (not (trap-at ?level1))
      (not (beast-at ?level2))
      (not (dragon-at ?level2))
      (not (equipped-weapon))
      (not (equipped-spell))
    )
    :effect (and
      (not (player-at ?level1))
      (player-at ?level2)
      (level_destroyed ?level1)
    )
  )
  ;player moves equipped with weapon 
  (:action move-equipped-with-weapon
    :parameters (?level1 ?level2 - level)
    :precondition (and
      (adjacent ?level1 ?level2)
      (player-at ?level1)
      (not (level_destroyed ?level2))
      (not (trap-at ?level2))
      (not (dragon-at ?level2))      
      (equipped-weapon))
    
    :effect (and
      (level_destroyed ?level1)
      (not (player-at ?level1))
      (player-at ?level2)
    )
  )

    ;player moves equipped with weapon 
  (:action move-equipped-with-spell
    :parameters (?level1 ?level2 - level)
    :precondition (and
      (adjacent ?level1 ?level2)
      (player-at ?level1)
      (not (trap-at ?level1))
      (not (level_destroyed ?level2))
      (not (beast-at ?level2))      
      (equipped-spell))
    
    :effect (and
      (level_destroyed ?level1)
      (not (player-at ?level1))
      (player-at ?level2)
    )
  )
  ; player disarms trap 
  (:action disarm_trap
    :parameters (?level - level)
    :precondition (and
      (not (equipped-weapon))
      (player-at ?level)
      (trap-at ?level)
    )
    :effect (and
      (not (trap-at ?level))
    )
  )

  ; player collects weapon
  (:action pickup_weapon
    :parameters (?level - level)
    :precondition (and
      (not (equipped-spell))
      (not (equipped-weapon))
      (weapon-at ?level)
      (player-at ?level)
    )
    :effect (and
      (not (weapon-at ?level))
      (equipped-weapon))
    )
  ; player collects weapon
  (:action pickup_spell
    :parameters (?level - level)
    :precondition (and
      (not (equipped-spell))
      (not (equipped-weapon))
      (spell-at ?level)
      (player-at ?level)
    )
    :effect (and
      (not (spell-at ?level))
      (equipped-spell))
    )    
  ; player destroys weapon in an empty level (no beast or no trap)
  (:action destroy_weapon
    :parameters (?level - level)
    :precondition (and
      (equipped-weapon)
      (player-at ?level)
      (not (trap-at ?level))
      (not (beast-at ?level))
    )
    :effect (and
      (not (equipped-weapon))
    )
  )
  ; player destroys weapon in an empty level (no beast or no trap)
  (:action destroy_spell
    :parameters (?level - level)
    :precondition (and
      (equipped-spell)
      (player-at ?level)
      (not (trap-at ?level))
      (not (beast-at ?level))
    )
    :effect (and
      (not (equipped-spell))
    )
  )
)
