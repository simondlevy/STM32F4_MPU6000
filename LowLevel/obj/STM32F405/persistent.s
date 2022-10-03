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
	.file	"persistent.c"
	.text
	.section	.text.persistentObjectRead,"ax",%progbits
	.align	1
	.global	persistentObjectRead
	.syntax unified
	.thumb
	.thumb_func
	.type	persistentObjectRead, %function
persistentObjectRead:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	RTC_ReadBackupRegister
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	persistentObjectRead, .-persistentObjectRead
	.section	.text.persistentObjectWrite,"ax",%progbits
	.align	1
	.global	persistentObjectWrite
	.syntax unified
	.thumb
	.thumb_func
	.type	persistentObjectWrite, %function
persistentObjectWrite:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r1, [r7]
	mov	r0, r3
	bl	RTC_WriteBackupRegister
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	persistentObjectWrite, .-persistentObjectWrite
	.section	.text.persistentObjectRTCEnable,"ax",%progbits
	.align	1
	.global	persistentObjectRTCEnable
	.syntax unified
	.thumb
	.thumb_func
	.type	persistentObjectRTCEnable, %function
persistentObjectRTCEnable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #268435456
	bl	RCC_APB1PeriphClockCmd
	movs	r0, #1
	bl	PWR_BackupAccessCmd
	movs	r0, #1
	bl	RTC_WriteProtectionCmd
	movs	r0, #0
	bl	RTC_WriteProtectionCmd
	nop
	pop	{r7, pc}
	.size	persistentObjectRTCEnable, .-persistentObjectRTCEnable
	.section	.text.persistentObjectInit,"ax",%progbits
	.align	1
	.global	persistentObjectInit
	.syntax unified
	.thumb
	.thumb_func
	.type	persistentObjectInit, %function
persistentObjectInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	bl	persistentObjectRTCEnable
	ldr	r3, .L11
	ldr	r3, [r3, #116]
	and	r3, r3, #268435456
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L6
	movs	r0, #0
	bl	persistentObjectRead
	mov	r3, r0
	ldr	r2, .L11+4
	cmp	r3, r2
	beq	.L10
.L6:
	movs	r3, #1
	str	r3, [r7, #4]
	b	.L8
.L9:
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	movs	r1, #0
	mov	r0, r3
	bl	persistentObjectWrite
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L8:
	ldr	r3, [r7, #4]
	cmp	r3, #6
	ble	.L9
	ldr	r1, .L11+4
	movs	r0, #0
	bl	persistentObjectWrite
.L10:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	1073887232
	.word	1113941553
	.size	persistentObjectInit, .-persistentObjectInit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
