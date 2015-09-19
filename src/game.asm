    .rsset $0010
game_state: .rs 1

GAME_STATE_LOADING_SECTION .func 0
GAME_STATE_PLAY .func 0

;-----------------------------------------------------------------------------------------
; Initialize method for the game
;-----------------------------------------------------------------------------------------
    .bank 0
OnInit:
    LOAD_ADDR palWorld1
    jsr SetPal0
    LOAD_ADDR palWorld1_sprites
    jsr SetPal1
    rts

;-----------------------------------------------------------------------------------------
; Game main loop. This is called every frame by the engine
;-----------------------------------------------------------------------------------------
    .bank 0
OnFrame:
    rts

;-----------------------------------------------------------------------------------------
; Include game data
;-----------------------------------------------------------------------------------------
    .include "src/data.asm"
