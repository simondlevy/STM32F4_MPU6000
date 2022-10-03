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
	.file	"dshot_packet.c"
	.text
	.section	.text.__basepriRestoreMem,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__basepriRestoreMem, %function
__basepriRestoreMem:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	.syntax unified
@ 493 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MSR basepri, r3
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	__basepriRestoreMem, .-__basepriRestoreMem
	.section	.text.__basepriSetMemRetVal,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	__basepriSetMemRetVal, %function
__basepriSetMemRetVal:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	.syntax unified
@ 518 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MSR basepri_max, r3
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	__basepriSetMemRetVal, .-__basepriSetMemRetVal
	.section	.text.getDshotPacketAtomic,"ax",%progbits
	.align	1
	.global	getDshotPacketAtomic
	.syntax unified
	.thumb
	.thumb_func
	.type	getDshotPacketAtomic, %function
getDshotPacketAtomic:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	.syntax unified
@ 465 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MRS r3, basepri
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	strb	r3, [r7, #15]
	movs	r0, #144
	bl	__basepriSetMemRetVal
	mov	r3, r0
	strb	r3, [r7, #21]
	b	.L6
.L7:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	lsls	r3, r3, #1
	sxth	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r3, r3
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #2]
	movs	r3, #0
	strb	r3, [r7, #21]
.L6:
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L7
	add	r3, r7, #15
	mov	r0, r3
	bl	__basepriRestoreMem
	ldrh	r3, [r7, #22]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	getDshotPacketAtomic, .-getDshotPacketAtomic
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
