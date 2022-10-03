	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"stm32f4xx_flash.c"
	.text
	.section	.text.FLASH_SetLatency,"ax",%progbits
	.align	1
	.global	FLASH_SetLatency
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_SetLatency, %function
FLASH_SetLatency:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L2
	ldr	r2, [r7, #4]
	uxtb	r2, r2
	strb	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073888256
	.size	FLASH_SetLatency, .-FLASH_SetLatency
	.section	.text.FLASH_PrefetchBufferCmd,"ax",%progbits
	.align	1
	.global	FLASH_PrefetchBufferCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_PrefetchBufferCmd, %function
FLASH_PrefetchBufferCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L5
	ldr	r3, .L8
	ldr	r3, [r3]
	ldr	r2, .L8
	orr	r3, r3, #256
	str	r3, [r2]
	b	.L7
.L5:
	ldr	r3, .L8
	ldr	r3, [r3]
	ldr	r2, .L8
	bic	r3, r3, #256
	str	r3, [r2]
.L7:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	1073888256
	.size	FLASH_PrefetchBufferCmd, .-FLASH_PrefetchBufferCmd
	.section	.text.FLASH_InstructionCacheCmd,"ax",%progbits
	.align	1
	.global	FLASH_InstructionCacheCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_InstructionCacheCmd, %function
FLASH_InstructionCacheCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L11
	ldr	r3, .L14
	ldr	r3, [r3]
	ldr	r2, .L14
	orr	r3, r3, #512
	str	r3, [r2]
	b	.L13
.L11:
	ldr	r3, .L14
	ldr	r3, [r3]
	ldr	r2, .L14
	bic	r3, r3, #512
	str	r3, [r2]
.L13:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	1073888256
	.size	FLASH_InstructionCacheCmd, .-FLASH_InstructionCacheCmd
	.section	.text.FLASH_DataCacheCmd,"ax",%progbits
	.align	1
	.global	FLASH_DataCacheCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_DataCacheCmd, %function
FLASH_DataCacheCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L20
	ldr	r3, [r3]
	ldr	r2, .L20
	orr	r3, r3, #1024
	str	r3, [r2]
	b	.L19
.L17:
	ldr	r3, .L20
	ldr	r3, [r3]
	ldr	r2, .L20
	bic	r3, r3, #1024
	str	r3, [r2]
.L19:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	1073888256
	.size	FLASH_DataCacheCmd, .-FLASH_DataCacheCmd
	.section	.text.FLASH_InstructionCacheReset,"ax",%progbits
	.align	1
	.global	FLASH_InstructionCacheReset
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_InstructionCacheReset, %function
FLASH_InstructionCacheReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23
	orr	r3, r3, #2048
	str	r3, [r2]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L24:
	.align	2
.L23:
	.word	1073888256
	.size	FLASH_InstructionCacheReset, .-FLASH_InstructionCacheReset
	.section	.text.FLASH_DataCacheReset,"ax",%progbits
	.align	1
	.global	FLASH_DataCacheReset
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_DataCacheReset, %function
FLASH_DataCacheReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L26
	ldr	r3, [r3]
	ldr	r2, .L26
	orr	r3, r3, #4096
	str	r3, [r2]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L27:
	.align	2
.L26:
	.word	1073888256
	.size	FLASH_DataCacheReset, .-FLASH_DataCacheReset
	.section	.text.FLASH_Unlock,"ax",%progbits
	.align	1
	.global	FLASH_Unlock
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_Unlock, %function
FLASH_Unlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L31
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bge	.L30
	ldr	r3, .L31
	ldr	r2, .L31+4
	str	r2, [r3, #4]
	ldr	r3, .L31
	ldr	r2, .L31+8
	str	r2, [r3, #4]
.L30:
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073888256
	.word	1164378403
	.word	-839939669
	.size	FLASH_Unlock, .-FLASH_Unlock
	.section	.text.FLASH_Lock,"ax",%progbits
	.align	1
	.global	FLASH_Lock
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_Lock, %function
FLASH_Lock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L34
	ldr	r3, [r3, #16]
	ldr	r2, .L34
	orr	r3, r3, #-2147483648
	str	r3, [r2, #16]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	1073888256
	.size	FLASH_Lock, .-FLASH_Lock
	.section	.text.FLASH_EraseSector,"ax",%progbits
	.align	1
	.global	FLASH_EraseSector
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_EraseSector, %function
FLASH_EraseSector:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #9
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L37
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L38
.L37:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L39
	mov	r3, #256
	str	r3, [r7, #12]
	b	.L38
.L39:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L40
	mov	r3, #512
	str	r3, [r7, #12]
	b	.L38
.L40:
	mov	r3, #768
	str	r3, [r7, #12]
.L38:
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L41
	ldr	r3, .L43
	ldr	r3, [r3, #16]
	ldr	r2, .L43
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L43
	ldr	r2, [r3, #16]
	ldr	r1, .L43
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, .L43
	ldr	r3, [r3, #16]
	ldr	r2, .L43
	bic	r3, r3, #248
	str	r3, [r2, #16]
	ldr	r3, .L43
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	ldr	r2, .L43
	orr	r3, r3, #2
	str	r3, [r2, #16]
	ldr	r3, .L43
	ldr	r3, [r3, #16]
	ldr	r2, .L43
	orr	r3, r3, #65536
	str	r3, [r2, #16]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #11]
	ldr	r3, .L43
	ldr	r3, [r3, #16]
	ldr	r2, .L43
	bic	r3, r3, #2
	str	r3, [r2, #16]
	ldr	r3, .L43
	ldr	r3, [r3, #16]
	ldr	r2, .L43
	bic	r3, r3, #248
	str	r3, [r2, #16]
.L41:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L44:
	.align	2
.L43:
	.word	1073888256
	.size	FLASH_EraseSector, .-FLASH_EraseSector
	.section	.text.FLASH_EraseAllSectors,"ax",%progbits
	.align	1
	.global	FLASH_EraseAllSectors
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_EraseAllSectors, %function
FLASH_EraseAllSectors:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #9
	strb	r3, [r7, #11]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L46
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L47
.L46:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L48
	mov	r3, #256
	str	r3, [r7, #12]
	b	.L47
.L48:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L49
	mov	r3, #512
	str	r3, [r7, #12]
	b	.L47
.L49:
	mov	r3, #768
	str	r3, [r7, #12]
.L47:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L50
	ldr	r3, .L52
	ldr	r3, [r3, #16]
	ldr	r2, .L52
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L52
	ldr	r2, [r3, #16]
	ldr	r1, .L52
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, .L52
	ldr	r3, [r3, #16]
	ldr	r2, .L52
	orr	r3, r3, #4
	str	r3, [r2, #16]
	ldr	r3, .L52
	ldr	r3, [r3, #16]
	ldr	r2, .L52
	orr	r3, r3, #65536
	str	r3, [r2, #16]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #11]
	ldr	r3, .L52
	ldr	r3, [r3, #16]
	ldr	r2, .L52
	bic	r3, r3, #4
	str	r3, [r2, #16]
.L50:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L53:
	.align	2
.L52:
	.word	1073888256
	.size	FLASH_EraseAllSectors, .-FLASH_EraseAllSectors
	.section	.text.FLASH_EraseAllBank1Sectors,"ax",%progbits
	.align	1
	.global	FLASH_EraseAllBank1Sectors
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_EraseAllBank1Sectors, %function
FLASH_EraseAllBank1Sectors:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #9
	strb	r3, [r7, #11]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L55
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L56
.L55:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L57
	mov	r3, #256
	str	r3, [r7, #12]
	b	.L56
.L57:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L58
	mov	r3, #512
	str	r3, [r7, #12]
	b	.L56
.L58:
	mov	r3, #768
	str	r3, [r7, #12]
.L56:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L59
	ldr	r3, .L61
	ldr	r3, [r3, #16]
	ldr	r2, .L61
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L61
	ldr	r2, [r3, #16]
	ldr	r1, .L61
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, .L61
	ldr	r3, [r3, #16]
	ldr	r2, .L61
	orr	r3, r3, #4
	str	r3, [r2, #16]
	ldr	r3, .L61
	ldr	r3, [r3, #16]
	ldr	r2, .L61
	orr	r3, r3, #65536
	str	r3, [r2, #16]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #11]
	ldr	r3, .L61
	ldr	r3, [r3, #16]
	ldr	r2, .L61
	bic	r3, r3, #4
	str	r3, [r2, #16]
.L59:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L62:
	.align	2
.L61:
	.word	1073888256
	.size	FLASH_EraseAllBank1Sectors, .-FLASH_EraseAllBank1Sectors
	.section	.text.FLASH_EraseAllBank2Sectors,"ax",%progbits
	.align	1
	.global	FLASH_EraseAllBank2Sectors
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_EraseAllBank2Sectors, %function
FLASH_EraseAllBank2Sectors:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #9
	strb	r3, [r7, #11]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L64
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L65
.L64:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L66
	mov	r3, #256
	str	r3, [r7, #12]
	b	.L65
.L66:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L67
	mov	r3, #512
	str	r3, [r7, #12]
	b	.L65
.L67:
	mov	r3, #768
	str	r3, [r7, #12]
.L65:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L68
	ldr	r3, .L70
	ldr	r3, [r3, #16]
	ldr	r2, .L70
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L70
	ldr	r2, [r3, #16]
	ldr	r1, .L70
	ldr	r3, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, .L70
	ldr	r3, [r3, #16]
	ldr	r2, .L70
	orr	r3, r3, #32768
	str	r3, [r2, #16]
	ldr	r3, .L70
	ldr	r3, [r3, #16]
	ldr	r2, .L70
	orr	r3, r3, #65536
	str	r3, [r2, #16]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #11]
	ldr	r3, .L70
	ldr	r3, [r3, #16]
	ldr	r2, .L70
	bic	r3, r3, #32768
	str	r3, [r2, #16]
.L68:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L71:
	.align	2
.L70:
	.word	1073888256
	.size	FLASH_EraseAllBank2Sectors, .-FLASH_EraseAllBank2Sectors
	.section	.text.FLASH_ProgramDoubleWord,"ax",%progbits
	.align	1
	.global	FLASH_ProgramDoubleWord
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_ProgramDoubleWord, %function
FLASH_ProgramDoubleWord:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	strd	r2, [r7]
	movs	r3, #9
	strb	r3, [r7, #23]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L73
	ldr	r3, .L75
	ldr	r3, [r3, #16]
	ldr	r2, .L75
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L75
	ldr	r3, [r3, #16]
	ldr	r2, .L75
	orr	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L75
	ldr	r3, [r3, #16]
	ldr	r2, .L75
	orr	r3, r3, #1
	str	r3, [r2, #16]
	ldr	r1, [r7, #12]
	ldrd	r2, [r7]
	strd	r2, [r1]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #23]
	ldr	r3, .L75
	ldr	r3, [r3, #16]
	ldr	r2, .L75
	bic	r3, r3, #1
	str	r3, [r2, #16]
.L73:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L76:
	.align	2
.L75:
	.word	1073888256
	.size	FLASH_ProgramDoubleWord, .-FLASH_ProgramDoubleWord
	.section	.text.FLASH_ProgramWord,"ax",%progbits
	.align	1
	.global	FLASH_ProgramWord
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_ProgramWord, %function
FLASH_ProgramWord:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #9
	strb	r3, [r7, #15]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L78
	ldr	r3, .L80
	ldr	r3, [r3, #16]
	ldr	r2, .L80
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L80
	ldr	r3, [r3, #16]
	ldr	r2, .L80
	orr	r3, r3, #512
	str	r3, [r2, #16]
	ldr	r3, .L80
	ldr	r3, [r3, #16]
	ldr	r2, .L80
	orr	r3, r3, #1
	str	r3, [r2, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, .L80
	ldr	r3, [r3, #16]
	ldr	r2, .L80
	bic	r3, r3, #1
	str	r3, [r2, #16]
.L78:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L81:
	.align	2
.L80:
	.word	1073888256
	.size	FLASH_ProgramWord, .-FLASH_ProgramWord
	.section	.text.FLASH_ProgramHalfWord,"ax",%progbits
	.align	1
	.global	FLASH_ProgramHalfWord
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_ProgramHalfWord, %function
FLASH_ProgramHalfWord:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #9
	strb	r3, [r7, #15]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L83
	ldr	r3, .L85
	ldr	r3, [r3, #16]
	ldr	r2, .L85
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L85
	ldr	r3, [r3, #16]
	ldr	r2, .L85
	orr	r3, r3, #256
	str	r3, [r2, #16]
	ldr	r3, .L85
	ldr	r3, [r3, #16]
	ldr	r2, .L85
	orr	r3, r3, #1
	str	r3, [r2, #16]
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3]	@ movhi
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, .L85
	ldr	r3, [r3, #16]
	ldr	r2, .L85
	bic	r3, r3, #1
	str	r3, [r2, #16]
.L83:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L86:
	.align	2
.L85:
	.word	1073888256
	.size	FLASH_ProgramHalfWord, .-FLASH_ProgramHalfWord
	.section	.text.FLASH_ProgramByte,"ax",%progbits
	.align	1
	.global	FLASH_ProgramByte
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_ProgramByte, %function
FLASH_ProgramByte:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #9
	strb	r3, [r7, #15]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L88
	ldr	r3, .L90
	ldr	r3, [r3, #16]
	ldr	r2, .L90
	bic	r3, r3, #768
	str	r3, [r2, #16]
	ldr	r3, .L90
	ldr	r2, .L90
	ldr	r3, [r3, #16]
	str	r3, [r2, #16]
	ldr	r3, .L90
	ldr	r3, [r3, #16]
	ldr	r2, .L90
	orr	r3, r3, #1
	str	r3, [r2, #16]
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #3]
	strb	r2, [r3]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, .L90
	ldr	r3, [r3, #16]
	ldr	r2, .L90
	bic	r3, r3, #1
	str	r3, [r2, #16]
.L88:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L91:
	.align	2
.L90:
	.word	1073888256
	.size	FLASH_ProgramByte, .-FLASH_ProgramByte
	.section	.text.FLASH_OB_Unlock,"ax",%progbits
	.align	1
	.global	FLASH_OB_Unlock
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_Unlock, %function
FLASH_OB_Unlock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L95
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L94
	ldr	r3, .L95
	ldr	r2, .L95+4
	str	r2, [r3, #8]
	ldr	r3, .L95
	ldr	r2, .L95+8
	str	r2, [r3, #8]
.L94:
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L96:
	.align	2
.L95:
	.word	1073888256
	.word	135866939
	.word	1281191551
	.size	FLASH_OB_Unlock, .-FLASH_OB_Unlock
	.section	.text.FLASH_OB_Lock,"ax",%progbits
	.align	1
	.global	FLASH_OB_Lock
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_Lock, %function
FLASH_OB_Lock:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L98
	ldr	r3, [r3, #20]
	ldr	r2, .L98
	orr	r3, r3, #1
	str	r3, [r2, #20]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L99:
	.align	2
.L98:
	.word	1073888256
	.size	FLASH_OB_Lock, .-FLASH_OB_Lock
	.section	.text.FLASH_OB_WRPConfig,"ax",%progbits
	.align	1
	.global	FLASH_OB_WRPConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_WRPConfig, %function
FLASH_OB_WRPConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #9
	strb	r3, [r7, #15]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L103
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L102
	ldr	r3, .L104
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L104
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L103
.L102:
	ldr	r3, .L104
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	ldr	r1, .L104
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L103:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L105:
	.align	2
.L104:
	.word	1073888278
	.size	FLASH_OB_WRPConfig, .-FLASH_OB_WRPConfig
	.section	.text.FLASH_OB_WRP1Config,"ax",%progbits
	.align	1
	.global	FLASH_OB_WRP1Config
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_WRP1Config, %function
FLASH_OB_WRP1Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #9
	strb	r3, [r7, #15]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L109
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L108
	ldr	r3, .L110
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L110
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L109
.L108:
	ldr	r3, .L110
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	ldr	r1, .L110
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L109:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L111:
	.align	2
.L110:
	.word	1073888282
	.size	FLASH_OB_WRP1Config, .-FLASH_OB_WRP1Config
	.section	.text.FLASH_OB_PCROPSelectionConfig,"ax",%progbits
	.align	1
	.global	FLASH_OB_PCROPSelectionConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_PCROPSelectionConfig, %function
FLASH_OB_PCROPSelectionConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #255
	strb	r3, [r7, #15]
	ldr	r3, .L113
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #127
	strb	r3, [r7, #15]
	ldr	r1, .L113
	ldrb	r2, [r7, #7]
	ldrb	r3, [r7, #15]
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L114:
	.align	2
.L113:
	.word	1073888279
	.size	FLASH_OB_PCROPSelectionConfig, .-FLASH_OB_PCROPSelectionConfig
	.section	.text.FLASH_OB_PCROPConfig,"ax",%progbits
	.align	1
	.global	FLASH_OB_PCROPConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_PCROPConfig, %function
FLASH_OB_PCROPConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #9
	strb	r3, [r7, #15]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L118
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L117
	ldr	r3, .L119
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	ldr	r1, .L119
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L118
.L117:
	ldr	r3, .L119
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L119
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L118:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L120:
	.align	2
.L119:
	.word	1073888278
	.size	FLASH_OB_PCROPConfig, .-FLASH_OB_PCROPConfig
	.section	.text.FLASH_OB_PCROP1Config,"ax",%progbits
	.align	1
	.global	FLASH_OB_PCROP1Config
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_PCROP1Config, %function
FLASH_OB_PCROP1Config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #9
	strb	r3, [r7, #15]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L124
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L123
	ldr	r3, .L125
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	ldr	r1, .L125
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	b	.L124
.L123:
	ldr	r3, .L125
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7, #4]
	uxth	r3, r3
	mvns	r3, r3
	uxth	r3, r3
	ldr	r1, .L125
	ands	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
.L124:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L126:
	.align	2
.L125:
	.word	1073888282
	.size	FLASH_OB_PCROP1Config, .-FLASH_OB_PCROP1Config
	.section	.text.FLASH_OB_RDPConfig,"ax",%progbits
	.align	1
	.global	FLASH_OB_RDPConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_RDPConfig, %function
FLASH_OB_RDPConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #9
	strb	r3, [r7, #15]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L129
	ldr	r2, .L130
	ldrb	r3, [r7, #7]
	strb	r3, [r2]
.L129:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L131:
	.align	2
.L130:
	.word	1073888277
	.size	FLASH_OB_RDPConfig, .-FLASH_OB_RDPConfig
	.section	.text.FLASH_OB_UserConfig,"ax",%progbits
	.align	1
	.global	FLASH_OB_UserConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_UserConfig, %function
FLASH_OB_UserConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	movs	r3, #255
	strb	r3, [r7, #15]
	movs	r3, #9
	strb	r3, [r7, #14]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #14]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #9
	bne	.L134
	ldr	r3, .L135
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #15
	strb	r3, [r7, #15]
	ldrb	r2, [r7, #6]
	ldrb	r3, [r7, #15]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldrb	r3, [r7, #5]
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r1, .L135
	ldrb	r3, [r7, #7]
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
.L134:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L136:
	.align	2
.L135:
	.word	1073888276
	.size	FLASH_OB_UserConfig, .-FLASH_OB_UserConfig
	.section	.text.FLASH_OB_BootConfig,"ax",%progbits
	.align	1
	.global	FLASH_OB_BootConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_BootConfig, %function
FLASH_OB_BootConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L138
	ldrb	r3, [r3]
	uxtb	r3, r3
	ldr	r2, .L138
	bic	r3, r3, #16
	uxtb	r3, r3
	strb	r3, [r2]
	ldr	r3, .L138
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldr	r1, .L138
	ldrb	r3, [r7, #7]
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L139:
	.align	2
.L138:
	.word	1073888276
	.size	FLASH_OB_BootConfig, .-FLASH_OB_BootConfig
	.section	.text.FLASH_OB_BORConfig,"ax",%progbits
	.align	1
	.global	FLASH_OB_BORConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_BORConfig, %function
FLASH_OB_BORConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L141
	ldrb	r3, [r3]
	uxtb	r3, r3
	ldr	r2, .L141
	bic	r3, r3, #12
	uxtb	r3, r3
	strb	r3, [r2]
	ldr	r3, .L141
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldr	r1, .L141
	ldrb	r3, [r7, #7]
	orrs	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [r1]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L142:
	.align	2
.L141:
	.word	1073888276
	.size	FLASH_OB_BORConfig, .-FLASH_OB_BORConfig
	.section	.text.FLASH_OB_Launch,"ax",%progbits
	.align	1
	.global	FLASH_OB_Launch
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_Launch, %function
FLASH_OB_Launch:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #9
	strb	r3, [r7, #7]
	ldr	r3, .L145
	ldrb	r3, [r3]
	uxtb	r3, r3
	ldr	r2, .L145
	orr	r3, r3, #2
	uxtb	r3, r3
	strb	r3, [r2]
	bl	FLASH_WaitForLastOperation
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L146:
	.align	2
.L145:
	.word	1073888276
	.size	FLASH_OB_Launch, .-FLASH_OB_Launch
	.section	.text.FLASH_OB_GetUser,"ax",%progbits
	.align	1
	.global	FLASH_OB_GetUser
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_GetUser, %function
FLASH_OB_GetUser:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L149
	ldr	r3, [r3, #20]
	lsrs	r3, r3, #5
	uxtb	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L150:
	.align	2
.L149:
	.word	1073888256
	.size	FLASH_OB_GetUser, .-FLASH_OB_GetUser
	.section	.text.FLASH_OB_GetWRP,"ax",%progbits
	.align	1
	.global	FLASH_OB_GetWRP
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_GetWRP, %function
FLASH_OB_GetWRP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L153
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L154:
	.align	2
.L153:
	.word	1073888278
	.size	FLASH_OB_GetWRP, .-FLASH_OB_GetWRP
	.section	.text.FLASH_OB_GetWRP1,"ax",%progbits
	.align	1
	.global	FLASH_OB_GetWRP1
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_GetWRP1, %function
FLASH_OB_GetWRP1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L157
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L158:
	.align	2
.L157:
	.word	1073888282
	.size	FLASH_OB_GetWRP1, .-FLASH_OB_GetWRP1
	.section	.text.FLASH_OB_GetPCROP,"ax",%progbits
	.align	1
	.global	FLASH_OB_GetPCROP
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_GetPCROP, %function
FLASH_OB_GetPCROP:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L161
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L162:
	.align	2
.L161:
	.word	1073888278
	.size	FLASH_OB_GetPCROP, .-FLASH_OB_GetPCROP
	.section	.text.FLASH_OB_GetPCROP1,"ax",%progbits
	.align	1
	.global	FLASH_OB_GetPCROP1
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_GetPCROP1, %function
FLASH_OB_GetPCROP1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L165
	ldrh	r3, [r3]	@ movhi
	uxth	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L166:
	.align	2
.L165:
	.word	1073888282
	.size	FLASH_OB_GetPCROP1, .-FLASH_OB_GetPCROP1
	.section	.text.FLASH_OB_GetRDP,"ax",%progbits
	.align	1
	.global	FLASH_OB_GetRDP
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_GetRDP, %function
FLASH_OB_GetRDP:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #0
	strb	r3, [r7, #7]
	ldr	r3, .L171
	ldrb	r3, [r3]
	uxtb	r3, r3
	cmp	r3, #170
	beq	.L168
	movs	r3, #1
	strb	r3, [r7, #7]
	b	.L169
.L168:
	movs	r3, #0
	strb	r3, [r7, #7]
.L169:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L172:
	.align	2
.L171:
	.word	1073888277
	.size	FLASH_OB_GetRDP, .-FLASH_OB_GetRDP
	.section	.text.FLASH_OB_GetBOR,"ax",%progbits
	.align	1
	.global	FLASH_OB_GetBOR
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_OB_GetBOR, %function
FLASH_OB_GetBOR:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L175
	ldrb	r3, [r3]
	uxtb	r3, r3
	and	r3, r3, #12
	uxtb	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L176:
	.align	2
.L175:
	.word	1073888276
	.size	FLASH_OB_GetBOR, .-FLASH_OB_GetBOR
	.section	.text.FLASH_ITConfig,"ax",%progbits
	.align	1
	.global	FLASH_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_ITConfig, %function
FLASH_ITConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L178
	ldr	r3, .L181
	ldr	r2, [r3, #16]
	ldr	r1, .L181
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	b	.L180
.L178:
	ldr	r3, .L181
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L181
	ands	r3, r3, r2
	str	r3, [r1, #16]
.L180:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L182:
	.align	2
.L181:
	.word	1073888256
	.size	FLASH_ITConfig, .-FLASH_ITConfig
	.section	.text.FLASH_GetFlagStatus,"ax",%progbits
	.align	1
	.global	FLASH_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_GetFlagStatus, %function
FLASH_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L187
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L184
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L185
.L184:
	movs	r3, #0
	strb	r3, [r7, #15]
.L185:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L188:
	.align	2
.L187:
	.word	1073888256
	.size	FLASH_GetFlagStatus, .-FLASH_GetFlagStatus
	.section	.text.FLASH_ClearFlag,"ax",%progbits
	.align	1
	.global	FLASH_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_ClearFlag, %function
FLASH_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L190
	ldr	r3, [r7, #4]
	str	r3, [r2, #12]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L191:
	.align	2
.L190:
	.word	1073888256
	.size	FLASH_ClearFlag, .-FLASH_ClearFlag
	.section	.text.FLASH_GetStatus,"ax",%progbits
	.align	1
	.global	FLASH_GetStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_GetStatus, %function
FLASH_GetStatus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #9
	strb	r3, [r7, #7]
	ldr	r3, .L200
	ldr	r3, [r3, #12]
	and	r3, r3, #65536
	cmp	r3, #65536
	bne	.L193
	movs	r3, #1
	strb	r3, [r7, #7]
	b	.L194
.L193:
	ldr	r3, .L200
	ldr	r3, [r3, #12]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L195
	movs	r3, #6
	strb	r3, [r7, #7]
	b	.L194
.L195:
	ldr	r3, .L200
	ldr	r3, [r3, #12]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L196
	movs	r3, #2
	strb	r3, [r7, #7]
	b	.L194
.L196:
	ldr	r3, .L200
	ldr	r3, [r3, #12]
	and	r3, r3, #224
	cmp	r3, #0
	beq	.L197
	movs	r3, #7
	strb	r3, [r7, #7]
	b	.L194
.L197:
	ldr	r3, .L200
	ldr	r3, [r3, #12]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L198
	movs	r3, #8
	strb	r3, [r7, #7]
	b	.L194
.L198:
	movs	r3, #9
	strb	r3, [r7, #7]
.L194:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L201:
	.align	2
.L200:
	.word	1073888256
	.size	FLASH_GetStatus, .-FLASH_GetStatus
	.section	.text.FLASH_WaitForLastOperation,"ax",%progbits
	.align	1
	.global	FLASH_WaitForLastOperation
	.syntax unified
	.thumb
	.thumb_func
	.type	FLASH_WaitForLastOperation, %function
FLASH_WaitForLastOperation:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #9
	strb	r3, [r7, #7]
	bl	FLASH_GetStatus
	mov	r3, r0
	strb	r3, [r7, #7]
	b	.L203
.L204:
	bl	FLASH_GetStatus
	mov	r3, r0
	strb	r3, [r7, #7]
.L203:
	ldrb	r3, [r7, #7]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L204
	ldrb	r3, [r7, #7]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FLASH_WaitForLastOperation, .-FLASH_WaitForLastOperation
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
