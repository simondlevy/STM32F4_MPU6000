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
	.file	"stm32f4xx_fsmc.c"
	.text
	.global	FSMC_DefaultTimingStruct
	.section	.rodata.FSMC_DefaultTimingStruct,"a"
	.align	2
	.type	FSMC_DefaultTimingStruct, %object
	.size	FSMC_DefaultTimingStruct, 28
FSMC_DefaultTimingStruct:
	.word	15
	.word	15
	.word	255
	.word	15
	.word	15
	.word	15
	.word	0
	.section	.text.FSMC_NORSRAMDeInit,"ax",%progbits
	.align	1
	.global	FSMC_NORSRAMDeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NORSRAMDeInit, %function
FSMC_NORSRAMDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	mov	r2, #-1610612736
	ldr	r3, [r7, #4]
	movw	r1, #12507
	str	r1, [r2, r3, lsl #2]
	b	.L3
.L2:
	mov	r2, #-1610612736
	ldr	r3, [r7, #4]
	movw	r1, #12498
	str	r1, [r2, r3, lsl #2]
.L3:
	mov	r2, #-1610612736
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	mvn	r1, #-268435456
	str	r1, [r2, r3, lsl #2]
	ldr	r2, .L4
	ldr	r3, [r7, #4]
	mvn	r1, #-268435456
	str	r1, [r2, r3, lsl #2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	-1610612476
	.size	FSMC_NORSRAMDeInit, .-FSMC_NORSRAMDeInit
	.section	.text.FSMC_NORSRAMInit,"ax",%progbits
	.align	1
	.global	FSMC_NORSRAMInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NORSRAMInit, %function
FSMC_NORSRAMInit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	mov	r2, #-1610612736
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, .L11
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	orrs	r3, r3, r2
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	mov	r1, #-1610612736
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	str	r2, [r1, r3, lsl #2]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #8
	bne	.L7
	mov	r2, #-1610612736
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r2, r3, lsl #2]
	mov	r1, #-1610612736
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r1, r3, lsl #2]
.L7:
	mov	r2, #-1610612736
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	and	r3, r3, #-1073741824
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #20
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #24
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r3, [r3, #24]
	orrs	r3, r3, r2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	mov	r1, #-1610612736
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, [r7, #16]
	str	r2, [r1, r3, lsl #2]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #16384
	bne	.L8
	ldr	r2, .L11+4
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, .L11+8
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #4
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #24]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r1, .L11+4
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r1, r3, lsl #2]
	b	.L10
.L8:
	ldr	r2, .L11+4
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r1, #-268435456
	str	r1, [r2, r3, lsl #2]
.L10:
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	-589696
	.word	-1610612476
	.word	-806354944
	.size	FSMC_NORSRAMInit, .-FSMC_NORSRAMInit
	.section	.text.FSMC_NORSRAMStructInit,"ax",%progbits
	.align	1
	.global	FSMC_NORSRAMStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NORSRAMStructInit, %function
FSMC_NORSRAMStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	mov	r2, #4096
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	mov	r2, #8192
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r2, .L14
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r2, .L14
	str	r2, [r3, #56]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	FSMC_DefaultTimingStruct
	.size	FSMC_NORSRAMStructInit, .-FSMC_NORSRAMStructInit
	.section	.text.FSMC_NORSRAMCmd,"ax",%progbits
	.align	1
	.global	FSMC_NORSRAMCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NORSRAMCmd, %function
FSMC_NORSRAMCmd:
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
	beq	.L17
	mov	r2, #-1610612736
	ldr	r3, [r7, #4]
	ldr	r3, [r2, r3, lsl #2]
	mov	r1, #-1610612736
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r1, r3, lsl #2]
	b	.L19
.L17:
	mov	r2, #-1610612736
	ldr	r3, [r7, #4]
	ldr	r2, [r2, r3, lsl #2]
	mov	r1, #-1610612736
	ldr	r3, .L20
	ands	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r3, [r1, r2, lsl #2]
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
	.word	1048574
	.size	FSMC_NORSRAMCmd, .-FSMC_NORSRAMCmd
	.section	.text.FSMC_NANDDeInit,"ax",%progbits
	.align	1
	.global	FSMC_NANDDeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NANDDeInit, %function
FSMC_NANDDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L23
	ldr	r3, .L26
	movs	r2, #24
	str	r2, [r3]
	ldr	r3, .L26
	movs	r2, #64
	str	r2, [r3, #4]
	ldr	r3, .L26
	mov	r2, #-50529028
	str	r2, [r3, #8]
	ldr	r3, .L26
	mov	r2, #-50529028
	str	r2, [r3, #12]
	b	.L25
.L23:
	ldr	r3, .L26+4
	movs	r2, #24
	str	r2, [r3]
	ldr	r3, .L26+4
	movs	r2, #64
	str	r2, [r3, #4]
	ldr	r3, .L26+4
	mov	r2, #-50529028
	str	r2, [r3, #8]
	ldr	r3, .L26+4
	mov	r2, #-50529028
	str	r2, [r3, #12]
.L25:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L27:
	.align	2
.L26:
	.word	-1610612640
	.word	-1610612608
	.size	FSMC_NANDDeInit, .-FSMC_NANDDeInit
	.section	.text.FSMC_NANDInit,"ax",%progbits
	.align	1
	.global	FSMC_NANDInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NANDInit, %function
FSMC_NANDInit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L29
	ldr	r3, .L38
	ldr	r3, [r3]
	str	r3, [r7, #20]
	b	.L30
.L29:
	ldr	r3, .L38+4
	ldr	r3, [r3]
	str	r3, [r7, #20]
.L30:
	ldr	r2, [r7, #20]
	ldr	r3, .L38+8
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #9
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsls	r3, r3, #13
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	orr	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L31
	ldr	r3, .L38
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	b	.L32
.L31:
	ldr	r3, .L38+4
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
.L32:
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L33
	ldr	r3, .L38
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	b	.L34
.L33:
	ldr	r3, .L38
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
.L34:
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L35
	ldr	r2, .L38
	ldr	r3, [r7, #20]
	str	r3, [r2]
	ldr	r2, .L38
	ldr	r3, [r7, #16]
	str	r3, [r2, #8]
	ldr	r2, .L38
	ldr	r3, [r7, #12]
	str	r3, [r2, #12]
	b	.L37
.L35:
	ldr	r2, .L38+4
	ldr	r3, [r7, #20]
	str	r3, [r2]
	ldr	r2, .L38+4
	ldr	r3, [r7, #16]
	str	r3, [r2, #8]
	ldr	r2, .L38+4
	ldr	r3, [r7, #12]
	str	r3, [r2, #12]
.L37:
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
	.word	-1610612640
	.word	-1610612608
	.word	-1048191
	.size	FSMC_NANDInit, .-FSMC_NANDInit
	.section	.text.FSMC_NANDStructInit,"ax",%progbits
	.align	1
	.global	FSMC_NANDStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NANDStructInit, %function
FSMC_NANDStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #16
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	movs	r2, #252
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	movs	r2, #252
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	movs	r2, #252
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	movs	r2, #252
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	movs	r2, #252
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	movs	r2, #252
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	movs	r2, #252
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	movs	r2, #252
	str	r2, [r3, #12]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FSMC_NANDStructInit, .-FSMC_NANDStructInit
	.section	.text.FSMC_NANDCmd,"ax",%progbits
	.align	1
	.global	FSMC_NANDCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NANDCmd, %function
FSMC_NANDCmd:
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
	beq	.L42
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L43
	ldr	r3, .L47
	ldr	r3, [r3]
	ldr	r2, .L47
	orr	r3, r3, #4
	str	r3, [r2]
	b	.L46
.L43:
	ldr	r3, .L47+4
	ldr	r3, [r3]
	ldr	r2, .L47+4
	orr	r3, r3, #4
	str	r3, [r2]
	b	.L46
.L42:
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L45
	ldr	r3, .L47
	ldr	r2, [r3]
	ldr	r1, .L47
	ldr	r3, .L47+8
	ands	r3, r3, r2
	str	r3, [r1]
	b	.L46
.L45:
	ldr	r3, .L47+4
	ldr	r2, [r3]
	ldr	r1, .L47+4
	ldr	r3, .L47+8
	ands	r3, r3, r2
	str	r3, [r1]
.L46:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L48:
	.align	2
.L47:
	.word	-1610612640
	.word	-1610612608
	.word	1048571
	.size	FSMC_NANDCmd, .-FSMC_NANDCmd
	.section	.text.FSMC_NANDECCCmd,"ax",%progbits
	.align	1
	.global	FSMC_NANDECCCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_NANDECCCmd, %function
FSMC_NANDECCCmd:
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
	beq	.L50
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L51
	ldr	r3, .L55
	ldr	r3, [r3]
	ldr	r2, .L55
	orr	r3, r3, #64
	str	r3, [r2]
	b	.L54
.L51:
	ldr	r3, .L55+4
	ldr	r3, [r3]
	ldr	r2, .L55+4
	orr	r3, r3, #64
	str	r3, [r2]
	b	.L54
.L50:
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L53
	ldr	r3, .L55
	ldr	r2, [r3]
	ldr	r1, .L55
	ldr	r3, .L55+8
	ands	r3, r3, r2
	str	r3, [r1]
	b	.L54
.L53:
	ldr	r3, .L55+4
	ldr	r2, [r3]
	ldr	r1, .L55+4
	ldr	r3, .L55+8
	ands	r3, r3, r2
	str	r3, [r1]
.L54:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L56:
	.align	2
.L55:
	.word	-1610612640
	.word	-1610612608
	.word	1048511
	.size	FSMC_NANDECCCmd, .-FSMC_NANDECCCmd
	.section	.text.FSMC_GetECC,"ax",%progbits
	.align	1
	.global	FSMC_GetECC
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_GetECC, %function
FSMC_GetECC:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L58
	ldr	r3, .L61
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	b	.L59
.L58:
	ldr	r3, .L61+4
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
.L59:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L62:
	.align	2
.L61:
	.word	-1610612640
	.word	-1610612608
	.size	FSMC_GetECC, .-FSMC_GetECC
	.section	.text.FSMC_PCCARDDeInit,"ax",%progbits
	.align	1
	.global	FSMC_PCCARDDeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_PCCARDDeInit, %function
FSMC_PCCARDDeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L64
	movs	r2, #24
	str	r2, [r3]
	ldr	r3, .L64
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L64
	mov	r2, #-50529028
	str	r2, [r3, #8]
	ldr	r3, .L64
	mov	r2, #-50529028
	str	r2, [r3, #12]
	ldr	r3, .L64
	mov	r2, #-50529028
	str	r2, [r3, #16]
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	-1610612576
	.size	FSMC_PCCARDDeInit, .-FSMC_PCCARDDeInit
	.section	.text.FSMC_PCCARDInit,"ax",%progbits
	.align	1
	.global	FSMC_PCCARDInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_PCCARDInit, %function
FSMC_PCCARDInit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L67
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #130560
	bic	r3, r3, #50
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #9
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #13
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	orr	r3, r3, #16
	str	r3, [r7, #20]
	ldr	r2, .L67
	ldr	r3, [r7, #20]
	str	r3, [r2]
	ldr	r3, .L67
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #16]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, .L67
	ldr	r3, [r7, #16]
	str	r3, [r2, #8]
	ldr	r3, .L67
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L67
	ldr	r3, [r7, #12]
	str	r3, [r2, #12]
	ldr	r3, .L67
	ldr	r3, [r3, #16]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r3, r3, r2
	ldr	r2, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, .L67
	ldr	r3, [r7, #8]
	str	r3, [r2, #16]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	-1610612576
	.size	FSMC_PCCARDInit, .-FSMC_PCCARDInit
	.section	.text.FSMC_PCCARDStructInit,"ax",%progbits
	.align	1
	.global	FSMC_PCCARDStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_PCCARDStructInit, %function
FSMC_PCCARDStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r2, #252
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r2, #252
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r2, #252
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movs	r2, #252
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #252
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #252
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #252
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #252
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	movs	r2, #252
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	movs	r2, #252
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	movs	r2, #252
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	movs	r2, #252
	str	r2, [r3, #12]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FSMC_PCCARDStructInit, .-FSMC_PCCARDStructInit
	.section	.text.FSMC_PCCARDCmd,"ax",%progbits
	.align	1
	.global	FSMC_PCCARDCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_PCCARDCmd, %function
FSMC_PCCARDCmd:
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
	beq	.L71
	ldr	r3, .L74
	ldr	r3, [r3]
	ldr	r2, .L74
	orr	r3, r3, #4
	str	r3, [r2]
	b	.L73
.L71:
	ldr	r3, .L74
	ldr	r2, [r3]
	ldr	r1, .L74
	ldr	r3, .L74+4
	ands	r3, r3, r2
	str	r3, [r1]
.L73:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L75:
	.align	2
.L74:
	.word	-1610612576
	.word	1048571
	.size	FSMC_PCCARDCmd, .-FSMC_PCCARDCmd
	.section	.text.FSMC_ITConfig,"ax",%progbits
	.align	1
	.global	FSMC_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_ITConfig, %function
FSMC_ITConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7, #12]
	cmp	r3, #16
	bne	.L78
	ldr	r3, .L84
	ldr	r2, [r3, #4]
	ldr	r1, .L84
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	b	.L83
.L78:
	ldr	r3, [r7, #12]
	cmp	r3, #256
	bne	.L80
	ldr	r3, .L84+4
	ldr	r2, [r3, #4]
	ldr	r1, .L84+4
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	b	.L83
.L80:
	ldr	r3, .L84+8
	ldr	r2, [r3, #4]
	ldr	r1, .L84+8
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	b	.L83
.L77:
	ldr	r3, [r7, #12]
	cmp	r3, #16
	bne	.L81
	ldr	r3, .L84
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r1, .L84
	ands	r3, r3, r2
	str	r3, [r1, #4]
	b	.L83
.L81:
	ldr	r3, [r7, #12]
	cmp	r3, #256
	bne	.L82
	ldr	r3, .L84+4
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r1, .L84+4
	ands	r3, r3, r2
	str	r3, [r1, #4]
	b	.L83
.L82:
	ldr	r3, .L84+8
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	mvns	r3, r3
	ldr	r1, .L84+8
	ands	r3, r3, r2
	str	r3, [r1, #4]
.L83:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L85:
	.align	2
.L84:
	.word	-1610612640
	.word	-1610612608
	.word	-1610612576
	.size	FSMC_ITConfig, .-FSMC_ITConfig
	.section	.text.FSMC_GetFlagStatus,"ax",%progbits
	.align	1
	.global	FSMC_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_GetFlagStatus, %function
FSMC_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L87
	ldr	r3, .L93
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	b	.L88
.L87:
	ldr	r3, [r7, #4]
	cmp	r3, #256
	bne	.L89
	ldr	r3, .L93+4
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	b	.L88
.L89:
	ldr	r3, .L93+8
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
.L88:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L90
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L91
.L90:
	movs	r3, #0
	strb	r3, [r7, #15]
.L91:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L94:
	.align	2
.L93:
	.word	-1610612640
	.word	-1610612608
	.word	-1610612576
	.size	FSMC_GetFlagStatus, .-FSMC_GetFlagStatus
	.section	.text.FSMC_ClearFlag,"ax",%progbits
	.align	1
	.global	FSMC_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_ClearFlag, %function
FSMC_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L96
	ldr	r3, .L100
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	mvns	r3, r3
	ldr	r1, .L100
	ands	r3, r3, r2
	str	r3, [r1, #4]
	b	.L99
.L96:
	ldr	r3, [r7, #4]
	cmp	r3, #256
	bne	.L98
	ldr	r3, .L100+4
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	mvns	r3, r3
	ldr	r1, .L100+4
	ands	r3, r3, r2
	str	r3, [r1, #4]
	b	.L99
.L98:
	ldr	r3, .L100+8
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	mvns	r3, r3
	ldr	r1, .L100+8
	ands	r3, r3, r2
	str	r3, [r1, #4]
.L99:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L101:
	.align	2
.L100:
	.word	-1610612640
	.word	-1610612608
	.word	-1610612576
	.size	FSMC_ClearFlag, .-FSMC_ClearFlag
	.section	.text.FSMC_GetITStatus,"ax",%progbits
	.align	1
	.global	FSMC_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_GetITStatus, %function
FSMC_GetITStatus:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L103
	ldr	r3, .L109
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	b	.L104
.L103:
	ldr	r3, [r7, #4]
	cmp	r3, #256
	bne	.L105
	ldr	r3, .L109+4
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	b	.L104
.L105:
	ldr	r3, .L109+8
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
.L104:
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	lsrs	r3, r3, #3
	ldr	r2, [r7, #16]
	ands	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L106
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L106
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L107
.L106:
	movs	r3, #0
	strb	r3, [r7, #23]
.L107:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L110:
	.align	2
.L109:
	.word	-1610612640
	.word	-1610612608
	.word	-1610612576
	.size	FSMC_GetITStatus, .-FSMC_GetITStatus
	.section	.text.FSMC_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	FSMC_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	FSMC_ClearITPendingBit, %function
FSMC_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	bne	.L112
	ldr	r3, .L116
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsrs	r3, r3, #3
	mvns	r3, r3
	ldr	r1, .L116
	ands	r3, r3, r2
	str	r3, [r1, #4]
	b	.L115
.L112:
	ldr	r3, [r7, #4]
	cmp	r3, #256
	bne	.L114
	ldr	r3, .L116+4
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsrs	r3, r3, #3
	mvns	r3, r3
	ldr	r1, .L116+4
	ands	r3, r3, r2
	str	r3, [r1, #4]
	b	.L115
.L114:
	ldr	r3, .L116+8
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsrs	r3, r3, #3
	mvns	r3, r3
	ldr	r1, .L116+8
	ands	r3, r3, r2
	str	r3, [r1, #4]
.L115:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L117:
	.align	2
.L116:
	.word	-1610612640
	.word	-1610612608
	.word	-1610612576
	.size	FSMC_ClearITPendingBit, .-FSMC_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
