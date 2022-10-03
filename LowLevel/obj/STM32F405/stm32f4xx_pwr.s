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
	.file	"stm32f4xx_pwr.c"
	.text
	.section	.text.PWR_DeInit,"ax",%progbits
	.align	1
	.global	PWR_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_DeInit, %function
PWR_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #268435456
	bl	RCC_APB1PeriphResetCmd
	movs	r1, #0
	mov	r0, #268435456
	bl	RCC_APB1PeriphResetCmd
	nop
	pop	{r7, pc}
	.size	PWR_DeInit, .-PWR_DeInit
	.section	.text.PWR_BackupAccessCmd,"ax",%progbits
	.align	1
	.global	PWR_BackupAccessCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_BackupAccessCmd, %function
PWR_BackupAccessCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	1108213792
	.size	PWR_BackupAccessCmd, .-PWR_BackupAccessCmd
	.section	.text.PWR_PVDLevelConfig,"ax",%progbits
	.align	1
	.global	PWR_PVDLevelConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_PVDLevelConfig, %function
PWR_PVDLevelConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L6
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #224
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L6
	ldr	r3, [r7, #12]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073770496
	.size	PWR_PVDLevelConfig, .-PWR_PVDLevelConfig
	.section	.text.PWR_PVDCmd,"ax",%progbits
	.align	1
	.global	PWR_PVDCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_PVDCmd, %function
PWR_PVDCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L9
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	1108213776
	.size	PWR_PVDCmd, .-PWR_PVDCmd
	.section	.text.PWR_WakeUpPinCmd,"ax",%progbits
	.align	1
	.global	PWR_WakeUpPinCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_WakeUpPinCmd, %function
PWR_WakeUpPinCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L12
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	1108213920
	.size	PWR_WakeUpPinCmd, .-PWR_WakeUpPinCmd
	.section	.text.PWR_BackupRegulatorCmd,"ax",%progbits
	.align	1
	.global	PWR_BackupRegulatorCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_BackupRegulatorCmd, %function
PWR_BackupRegulatorCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L15
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L16:
	.align	2
.L15:
	.word	1108213924
	.size	PWR_BackupRegulatorCmd, .-PWR_BackupRegulatorCmd
	.section	.text.PWR_MainRegulatorModeConfig,"ax",%progbits
	.align	1
	.global	PWR_MainRegulatorModeConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_MainRegulatorModeConfig, %function
PWR_MainRegulatorModeConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L18
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #49152
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L18
	ldr	r3, [r7, #12]
	str	r3, [r2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	1073770496
	.size	PWR_MainRegulatorModeConfig, .-PWR_MainRegulatorModeConfig
	.section	.text.PWR_OverDriveCmd,"ax",%progbits
	.align	1
	.global	PWR_OverDriveCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_OverDriveCmd, %function
PWR_OverDriveCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L21
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L22:
	.align	2
.L21:
	.word	1108213824
	.size	PWR_OverDriveCmd, .-PWR_OverDriveCmd
	.section	.text.PWR_OverDriveSWCmd,"ax",%progbits
	.align	1
	.global	PWR_OverDriveSWCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_OverDriveSWCmd, %function
PWR_OverDriveSWCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L24
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	1108213828
	.size	PWR_OverDriveSWCmd, .-PWR_OverDriveSWCmd
	.section	.text.PWR_UnderDriveCmd,"ax",%progbits
	.align	1
	.global	PWR_UnderDriveCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_UnderDriveCmd, %function
PWR_UnderDriveCmd:
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
	beq	.L27
	ldr	r3, .L30
	ldr	r3, [r3]
	ldr	r2, .L30
	orr	r3, r3, #786432
	str	r3, [r2]
	b	.L29
.L27:
	ldr	r3, .L30
	ldr	r3, [r3]
	ldr	r2, .L30
	bic	r3, r3, #786432
	str	r3, [r2]
.L29:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	1073770496
	.size	PWR_UnderDriveCmd, .-PWR_UnderDriveCmd
	.section	.text.PWR_FlashPowerDownCmd,"ax",%progbits
	.align	1
	.global	PWR_FlashPowerDownCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_FlashPowerDownCmd, %function
PWR_FlashPowerDownCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L33
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L34:
	.align	2
.L33:
	.word	1108213796
	.size	PWR_FlashPowerDownCmd, .-PWR_FlashPowerDownCmd
	.section	.text.PWR_EnterSTOPMode,"ax",%progbits
	.align	1
	.global	PWR_EnterSTOPMode
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_EnterSTOPMode, %function
PWR_EnterSTOPMode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L38
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3072
	bic	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L38
	ldr	r3, [r7, #12]
	str	r3, [r2]
	ldr	r3, .L38+4
	ldr	r3, [r3, #16]
	ldr	r2, .L38+4
	orr	r3, r3, #4
	str	r3, [r2, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L36
	.syntax unified
@ 841 "stm/lib/STM32F4/Drivers/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_pwr.c" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L37
.L36:
	.syntax unified
@ 846 "stm/lib/STM32F4/Drivers/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_pwr.c" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L37:
	ldr	r3, .L38+4
	ldr	r3, [r3, #16]
	ldr	r2, .L38+4
	bic	r3, r3, #4
	str	r3, [r2, #16]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
	.word	1073770496
	.word	-536810240
	.size	PWR_EnterSTOPMode, .-PWR_EnterSTOPMode
	.section	.text.PWR_EnterUnderDriveSTOPMode,"ax",%progbits
	.align	1
	.global	PWR_EnterUnderDriveSTOPMode
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_EnterUnderDriveSTOPMode, %function
PWR_EnterUnderDriveSTOPMode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L43
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #3072
	bic	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L43
	ldr	r3, [r7, #12]
	str	r3, [r2]
	ldr	r3, .L43+4
	ldr	r3, [r3, #16]
	ldr	r2, .L43+4
	orr	r3, r3, #4
	str	r3, [r2, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L41
	.syntax unified
@ 905 "stm/lib/STM32F4/Drivers/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_pwr.c" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L42
.L41:
	.syntax unified
@ 910 "stm/lib/STM32F4/Drivers/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_pwr.c" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L42:
	ldr	r3, .L43+4
	ldr	r3, [r3, #16]
	ldr	r2, .L43+4
	bic	r3, r3, #4
	str	r3, [r2, #16]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L44:
	.align	2
.L43:
	.word	1073770496
	.word	-536810240
	.size	PWR_EnterUnderDriveSTOPMode, .-PWR_EnterUnderDriveSTOPMode
	.section	.text.PWR_EnterSTANDBYMode,"ax",%progbits
	.align	1
	.global	PWR_EnterSTANDBYMode
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_EnterSTANDBYMode, %function
PWR_EnterSTANDBYMode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L46
	ldr	r3, [r3]
	ldr	r2, .L46
	orr	r3, r3, #2
	str	r3, [r2]
	ldr	r3, .L46+4
	ldr	r3, [r3, #16]
	ldr	r2, .L46+4
	orr	r3, r3, #4
	str	r3, [r2, #16]
	.syntax unified
@ 941 "stm/lib/STM32F4/Drivers/STM32F4xx_StdPeriph_Driver/src/stm32f4xx_pwr.c" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L47:
	.align	2
.L46:
	.word	1073770496
	.word	-536810240
	.size	PWR_EnterSTANDBYMode, .-PWR_EnterSTANDBYMode
	.section	.text.PWR_GetFlagStatus,"ax",%progbits
	.align	1
	.global	PWR_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_GetFlagStatus, %function
PWR_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L52
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L49
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L50
.L49:
	movs	r3, #0
	strb	r3, [r7, #15]
.L50:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L53:
	.align	2
.L52:
	.word	1073770496
	.size	PWR_GetFlagStatus, .-PWR_GetFlagStatus
	.section	.text.PWR_ClearFlag,"ax",%progbits
	.align	1
	.global	PWR_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	PWR_ClearFlag, %function
PWR_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L55
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	ldr	r1, .L55
	orrs	r3, r3, r2
	str	r3, [r1]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L56:
	.align	2
.L55:
	.word	1073770496
	.size	PWR_ClearFlag, .-PWR_ClearFlag
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
