# SUDOKILLER                                                                             
# Sudoku Game Solver in MIPS Assembly                                          
                                                                       
# Team Members:                                                           
# 1. Mukund Sarda (21103105)                                                    
# 2. Akash Sharma (21103093)                                                   
# 3. Karanjot Singh (21103096)                                                                                                                      

            .data
.align      4

board:      .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            
easy1:      .byte     0, 0, 8, 3, 0, 9, 1, 0, 0
            .byte     9, 0, 0, 0, 6, 0, 0, 0, 4
            .byte     0, 0, 7, 5, 0, 4, 8, 0, 0
            .byte     0, 3, 6, 0, 0, 0, 5, 4, 0
            .byte     0, 0, 1, 0, 0, 0, 6, 0, 0
            .byte     0, 4, 2, 0, 0, 0, 9, 7, 0
            .byte     0, 0, 5, 9, 0, 7, 3, 0, 0
            .byte     6, 0, 0, 0, 1, 0, 0, 0, 8
            .byte     0, 0, 4, 6, 0, 8, 2, 0, 0
            
easy2:      .byte     0, 0, 0, 0, 7, 0, 0, 0, 0
            .byte     2, 4, 0, 0, 0, 0, 0, 3, 9
            .byte     0, 0, 9, 3, 0, 8, 2, 0, 0
            .byte     9, 0, 0, 8, 1, 6, 0, 0, 5
            .byte     0, 2, 0, 0, 0, 0, 0, 9, 0
            .byte     3, 0, 0, 9, 5, 2, 0, 0, 6
            .byte     0, 0, 8, 4, 0, 3, 6, 0, 0
            .byte     1, 6, 0, 0, 0, 0, 0, 8, 2
            .byte     0, 0, 0, 0, 8, 0, 0, 0, 0
            
easy3:      .byte     0, 8, 4, 9, 0, 1, 7, 6, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 2, 0, 7, 5, 6, 0, 9, 0
            .byte     0, 0, 9, 0, 7, 0, 6, 0, 0
            .byte     0, 1, 5, 0, 0, 0, 3, 8, 0
            .byte     0, 0, 3, 0, 6, 0, 1, 0, 0
            .byte     0, 3, 0, 5, 8, 2, 0, 1, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 5, 8, 4, 0, 9, 2, 7, 0
            
easy4:      .byte     3, 0, 0, 0, 8, 0, 0, 0, 1
            .byte     0, 8, 0, 3, 0, 6, 0, 4, 0
            .byte     0, 0, 1, 9, 0, 4, 2, 0, 0
            .byte     0, 4, 5, 0, 0, 0, 8, 7, 0
            .byte     0, 0, 0, 0, 6, 0, 0, 0, 0
            .byte     0, 3, 2, 0, 0, 0, 5, 1, 0
            .byte     0, 0, 3, 4, 0, 1, 6, 0, 0
            .byte     0, 7, 0, 8, 0, 5, 0, 3, 0
            .byte     5, 0, 0, 0, 2, 0, 0, 0, 7
            
easy5:      .byte     0, 9, 0, 8, 0, 5, 0, 1, 0
            .byte     0, 3, 0, 0, 0, 0, 0, 2, 0
            .byte     5, 0, 0, 7, 0, 3, 0, 0, 9
            .byte     4, 7, 0, 9, 0, 6, 0, 3, 5
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     3, 1, 0, 4, 0, 2, 0, 6, 8
            .byte     8, 0, 0, 2, 0, 9, 0, 0, 3
            .byte     0, 6, 0, 0, 0, 0, 0, 4, 0
            .byte     0, 4, 0, 1, 0, 7, 0, 5, 0
            
medium1:    .byte     0, 9, 0, 0, 0, 0, 0, 2, 0
            .byte     2, 4, 0, 0, 0, 0, 0, 8, 1
            .byte     0, 0, 0, 1, 2, 5, 0, 0, 0
            .byte     0, 0, 7, 0, 6, 0, 8, 0, 0
            .byte     0, 0, 2, 7, 9, 8, 1, 0, 0
            .byte     0, 0, 4, 0, 1, 0, 6, 0, 0
            .byte     0, 0, 0, 6, 8, 7, 0, 0, 0
            .byte     6, 5, 0, 0, 0, 0, 0, 7, 4
            .byte     0, 7, 0, 0, 0, 0, 0, 6, 0
            
medium2:    .byte     0, 9, 8, 7, 0, 0, 0, 0, 0
            .byte     0, 0, 2, 0, 0, 6, 4, 0, 3
            .byte     0, 3, 0, 0, 9, 0, 5, 0, 0
            .byte     0, 0, 0, 3, 0, 0, 0, 0, 5
            .byte     0, 0, 5, 0, 0, 0, 2, 0, 0
            .byte     8, 0, 0, 0, 0, 5, 0, 0, 0
            .byte     0, 0, 9, 0, 7, 0, 0, 5, 0
            .byte     4, 0, 6, 2, 0, 0, 3, 0, 8
            .byte     0, 0, 0, 0, 0, 9, 7, 6, 0
            
medium3:    .byte     2, 0, 6, 0, 9, 0, 0, 0, 5
            .byte     0, 0, 1, 8, 2, 0, 0, 0, 0
            .byte     0, 0, 0, 4, 0, 0, 0, 8, 1
            .byte     0, 0, 0, 0, 0, 0, 5, 9, 0
            .byte     4, 2, 0, 0, 0, 0, 0, 6, 3
            .byte     0, 6, 5, 0, 0, 0, 0, 0, 0
            .byte     3, 1, 0, 0, 0, 6, 0, 0, 0
            .byte     0, 0, 0, 0, 7, 9, 6, 0, 0
            .byte     6, 0, 0, 0, 4, 0, 8, 0, 7
            
medium4:    .byte     0, 0, 7, 0, 0, 0, 4, 0, 0
            .byte     9, 4, 0, 0, 0, 0, 0, 8, 3
            .byte     0, 0, 0, 8, 0, 3, 0, 0, 0
            .byte     0, 3, 0, 5, 8, 9, 0, 6, 0
            .byte     0, 0, 0, 0, 0, 0, 0, 0, 0
            .byte     0, 7, 0, 1, 2, 4, 0, 9, 0
            .byte     0, 0, 0, 2, 0, 1, 0, 0, 0
            .byte     6, 2, 0, 0, 0, 0, 0, 5, 9
            .byte     0, 0, 5, 0, 0, 0, 7, 0, 0
            
medium5:    .byte     4, 0, 2, 0, 0, 0, 7, 0, 8
            .byte     0, 9, 0, 0, 0, 2, 0, 6, 0
            .byte     7, 0, 0, 8, 0, 0, 0, 0, 5
            .byte     0, 8, 0, 0, 3, 0, 9, 0, 0
            .byte     0, 0, 0, 7, 0, 1, 0, 0, 0
            .byte     0, 0, 1, 0, 8, 0, 0, 3, 0
            .byte     9, 0, 0, 0, 0, 7, 0, 0, 4
            .byte     0, 2, 0, 3, 0, 0, 0, 7, 0
            .byte     5, 0, 3, 0, 0, 0, 8, 0, 6
             
hard1:      .byte     5, 0, 0, 0, 4, 0, 0, 0, 9
            .byte     0, 0, 8, 1, 0, 5, 4, 0, 0
            .byte     0, 3, 0, 0, 0, 0, 0, 5, 0
            .byte     0, 8, 0, 3, 0, 7, 0, 1, 0
            .byte     2, 0, 0, 0, 0, 0, 0, 0, 3
            .byte     0, 7, 0, 6, 0, 2, 0, 4, 0
            .byte     0, 1, 0, 0, 0, 0, 0, 9, 0
            .byte     0, 0, 7, 2, 0, 9, 8, 0, 0
            .byte     8, 0, 0, 0, 7, 0, 0, 0, 4
            
hard2:      .byte     9, 7, 0, 0, 0, 0, 0, 5, 8
            .byte     0, 0, 5, 6, 0, 8, 2, 0, 0
            .byte     0, 0, 0, 0, 9, 0, 0, 0, 0
            .byte     0, 9, 0, 0, 0, 0, 0, 1, 0
            .byte     1, 0, 0, 4, 0, 5, 0, 0, 6
            .byte     0, 5, 0, 0, 0, 0, 0, 4, 0
            .byte     0, 0, 0, 0, 2, 0, 0, 0, 0
            .byte     0, 0, 9, 8, 0, 4, 6, 0, 0
            .byte     7, 2, 0, 0, 0, 0, 0, 8, 3
            
hard3:      .byte     0, 0, 1, 0, 0, 0, 6, 0, 0
            .byte     0, 5, 9, 0, 0, 2, 0, 0, 0
            .byte     4, 0, 0, 0, 0, 6, 0, 0, 2
            .byte     0, 0, 0, 8, 7, 0, 0, 1, 0
            .byte     2, 0, 0, 0, 9, 0, 0, 0, 7
            .byte     0, 4, 0, 0, 5, 3, 0, 0, 0
            .byte     8, 0, 0, 5, 0, 0, 0, 0, 6
            .byte     0, 0, 0, 1, 0, 0, 7, 9, 0
            .byte     0, 0, 4, 0, 0, 0, 5, 0, 0
            
hard4:      .byte     0, 0, 0, 0, 0, 0, 3, 0, 0
            .byte     0, 0, 0, 0, 8, 7, 0, 1, 0
            .byte     0, 0, 8, 0, 0, 0, 4, 0, 2
            .byte     5, 0, 0, 0, 3, 8, 0, 2, 0
            .byte     0, 0, 9, 0, 0, 0, 1, 0, 0
            .byte     0, 2, 0, 5, 7, 0, 0, 0, 8
            .byte     1, 0, 2, 0, 0, 0, 9, 0, 0
            .byte     0, 6, 0, 4, 5, 0, 0, 0, 0
            .byte     0, 0, 3, 0, 0, 0, 0, 0, 0                                                                                                                                                                                                                                                                                                                                                                                    
            
hard5:      .byte     8, 0, 0, 1, 0, 0, 0, 0, 0
            .byte     4, 0, 6, 0, 0, 2, 0, 0, 0
            .byte     0, 0, 3, 4, 6, 0, 0, 0, 7
            .byte     0, 0, 0, 0, 1, 0, 0, 8, 0
            .byte     1, 2, 0, 0, 0, 0, 0, 3, 9
            .byte     0, 8, 0, 0, 2, 0, 0, 0, 0
            .byte     5, 0, 0, 0, 3, 4, 2, 0, 0
            .byte     0, 0, 0, 5, 0, 0, 4, 0, 6
            .byte     0, 0, 0, 0, 0, 7, 0, 0, 3
            
new_row:    .ascii    " |\n"
h_sep:      .asciiz   " +---+---+---+---+---+---+---+---+---+\n"
v_sep:      .asciiz   " | "
err_msg:    .asciiz   "Sorry, solution not found...\n"
given:      .asciiz   "Given Sudoku: \n"
sol:        .asciiz   "Solution Sudoku: \n"
input:      .asciiz   "Enter for: \n1. Easy 1\n2. Easy 2\n3. Easy 3\n4. Easy 4\n5. Easy 5\n6. Medium 1\n7. Medium 2\n8. Medium 3\n9. Medium 4\n10. Medium 5\n11. Hard 1\n12. Hard 2\n13. Hard 3\n14. Hard 4\n15. Hard 5\n"
enter:      .asciiz   "Enter your choice: \n"

            .text
.globl      main

main:
    li $v0,4
    la $a0,input
    syscall
    
    li $v0,4
    la $a0,enter
    syscall 
    
    li $v0,5
    syscall
    beq $v0,1,load1
    beq $v0,2,load2
    beq $v0,3,load3
    beq $v0,4,load4
    beq $v0,5,load5
    beq $v0,6,load6
    beq $v0,7,load7
    beq $v0,8,load8
    beq $v0,9,load9
    beq $v0,10,load10
    beq $v0,11,load11
    beq $v0,12,load12
    beq $v0,13,load13
    beq $v0,14,load14
    beq $v0,15,load15
    start:
    jal print_board
    li $v0,4
    la $a0,new_row
    syscall
    move    $a0, $zero           
    jal     guess                 
    move    $s0, $v0              
    bnez    $s0, print_err       
    jal     print_board           
    j       exit                 
    
   load1:
   	li $t0,0
   	loopx1:
   		beq $t0,81,exitx1
   		lb $t3,easy1+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx1
   	exitx1:
   j start
   load2:
   	loopx2:
   		beq $t0,81,exitx2
   		lb $t3,easy2+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx2
   	exitx2:
   j start
   load3:
   	loopx3:
   		beq $t0,81,exitx3
   		lb $t3,easy3+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx3
   	exitx3:
   j start
   load4:
   	loopx4:
   		beq $t0,81,exitx4
   		lb $t3,easy4+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx4
   	exitx4:
   j start
   load5:
   	loopx5:
   		beq $t0,81,exitx5
   		lb $t3,easy5+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx5
   	exitx5:
   j start
   load6:
   	loopx6:
   		beq $t0,81,exitx6
   		lb $t3,medium1+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx6
   	exitx6:
   j start
   load7:
   	loopx7:
   		beq $t0,81,exitx7
   		lb $t3,medium2+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx7
   	exitx7:
   j start
   load8:
   	loopx8:
   		beq $t0,81,exitx8
   		lb $t3,medium3+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx8
   	exitx8:
   j start
   load9:
   	loopx9:
   		beq $t0,81,exitx9
   		lb $t3,medium4+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx9
   	exitx9:
   j start
   load10:
   	loopx10:
   		beq $t0,81,exitx10
   		lb $t3,medium5+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx10
   	exitx10:
   j start
   load11:
   	loopx11:
   		beq $t0,81,exitx11
   		lb $t3,hard1+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx11
   	exitx11:
   j start
   load12:
   	loopx12:
   		beq $t0,81,exitx12
   		lb $t3,hard2+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx12
   	exitx12:
   j start
   load13:
   	loopx13:
   		beq $t0,81,exitx13
   		lb $t3,hard3+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx13
   	exitx13:
   j start
   load14:
   	loopx14:
   		beq $t0,81,exitx14
   		lb $t3,hard4+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx14
   	exitx14:
   j start
   load15:
   	loopx15:
   		beq $t0,81,exitx15
   		lb $t3,hard5+0($t0)
   		sb $t3,board+0($t0)
   		addi $t0,$t0,1
   		j loopx15
   	exitx15:
   j start

print_err:
    la      $a0, err_msg
    li      $v0, 4
    syscall

exit:
    move    $a0, $s0
    li      $v0, 17
    syscall

guess:
    sub     $sp, $sp, 20
    sw      $ra, 16($sp)
    sw      $s3, 12($sp)
    sw      $s2, 8($sp)
    sw      $s1, 4($sp)
    sw      $s0, 0($sp)
    
    move    $s0, $a0
    beq     $s0, 81, guess_ret_ok
    
    li      $s3, 9
    div     $s0, $s3
    mflo    $s1
    mfhi    $s2
    
    lb      $t0, board + 0($s0)
    beqz    $t0, guess_loop
    addi    $a0, $s0, 1
    jal     guess
    j       guess_ret

guess_loop:
    move    $a0, $s3
    move    $a1, $s1
    move    $a2, $s2
    jal     check
    bnez    $v0, guess_chk_failed
    sb      $s3, board + 0($s0)
    addi    $a0, $s0, 1
    jal     guess
    beqz    $v0, guess_ret

guess_chk_failed:
    subi    $s3, $s3, 1
    bnez    $s3, guess_loop
    sb      $zero, board + 0($s0)
    li      $v0, 1
    j       guess_ret

guess_ret_ok:
    move    $v0, $zero

guess_ret:
    lw      $s0, 0($sp)
    lw      $s1, 4($sp)
    lw      $s2, 8($sp)
    lw      $s3, 12($sp)
    lw      $ra, 16($sp)
    addi    $sp, $sp, 20
    jr      $ra

check:
    li      $t0, 9
    mul     $t1, $a1, $t0
    
check_row:
    lb      $t2, board + 0($t1)
    beq     $a0, $t2, check_ret_fail
    addi    $t1, $t1, 1
    sub     $t0, $t0, 1
    bnez    $t0, check_row    
    move    $t1, $a2
    
check_col:
    lb      $t2, board + 0($t1)
    beq     $a0, $t2, check_ret_fail
    addi    $t1, $t1, 9
    ble     $t1, 81, check_col
    
    div     $t0, $a1, 3
    mul     $t0, $t0, 27
    div     $t1, $a2, 3
    mul     $t1, $t1, 3
    add     $t1, $t0, $t1
    
    li      $t0, 3
    li      $t3, 3
    
check_box:
    lb      $t2, board + 0($t1)
    beq     $a0, $t2, check_ret_fail
    sub     $t3, $t3, 1
    beqz    $t3, end_box_row
    addi    $t1, $t1, 1
    j       check_box
    
end_box_row:
    addi    $t1, $t1, 7
    li      $t3, 3
    sub     $t0, $t0, 1
    bnez    $t0, check_box
    
    move    $v0, $zero
    j       check_ret

check_ret_fail:
    li      $v0, 1

check_ret:
    jr      $ra

print_board:
    sub     $sp, $sp, 16
    sw      $ra, 12($sp)
    sw      $s2, 8($sp)
    sw      $s1, 4($sp)
    sw      $s0, 0($sp)

    la      $s0, board
    move    $s1, $zero
    move    $s2, $zero

    la      $a0, new_row
    li      $v0, 4
    syscall
    
    #li $v0,4
    #la $a0,given
    #syscall 
    
print_cell:
    la      $a0, v_sep
    li      $v0, 4
    syscall

    lb      $a0, ($s0)
    li      $v0, 1
    syscall

    addi    $s0, $s0, 1
    addi    $s2, $s2, 1

    blt     $s2, 9, print_cell

    la      $a0, new_row
    li      $v0, 4
    syscall

    move    $s2, $zero
    addi    $s1, $s1, 1

    blt     $s1, 9, print_cell

    lw      $s0, 0($sp)
    lw      $s1, 4($sp)
    lw      $s2, 8($sp)
    lw      $ra, 12($sp)
    addi    $sp, $sp, 16
    jr      $ra
