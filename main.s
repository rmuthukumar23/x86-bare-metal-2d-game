.text
.global main

main:
    # prologue
    pushq   %rbp
    movq    %rsp, %rbp

    # call game functions
    call    init_game
    call    game_loop

    # close the window and return success to the C runtime
    call    CloseWindow
    xorl    %eax, %eax
    leave
    ret

.section .note.GNU-stack,"",@progbits
