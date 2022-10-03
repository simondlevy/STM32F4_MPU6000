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
	.file	"bitbang.c"
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
	.section	.text.bbLoadDMARegs,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bbLoadDMARegs, %function
bbLoadDMARegs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bbLoadDMARegs, .-bbLoadDMARegs
	.section	.text.bbSaveDMARegs,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bbSaveDMARegs, %function
bbSaveDMARegs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	str	r2, [r3, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bbSaveDMARegs, .-bbSaveDMARegs
	.section	.text.bbGpioSetup,"ax",%progbits
	.align	1
	.global	bbGpioSetup
	.syntax unified
	.thumb
	.thumb_func
	.type	bbGpioSetup, %function
bbGpioSetup:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	movs	r1, #3
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, [r7, #8]
	lsls	r2, r2, #1
	movs	r1, #1
	lsl	r2, r1, r2
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	ldr	r2, [r7, #8]
	adds	r2, r2, #16
	movs	r1, #1
	lsl	r2, r1, r2
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	IOWrite
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r3, r3, #5
	sxtb	r3, r3
	orr	r3, r3, #9
	sxtb	r3, r3
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	IOConfigGPIO
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbGpioSetup, .-bbGpioSetup
	.section	.text.bbTimerChannelInit,"ax",%progbits
	.align	1
	.global	bbTimerChannelInit
	.syntax unified
	.thumb
	.thumb_func
	.type	bbTimerChannelInit, %function
bbTimerChannelInit:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #36]
	add	r3, r7, #12
	mov	r0, r3
	bl	TIM_OCStructInit
	movs	r3, #96
	strh	r3, [r7, #12]	@ movhi
	mov	r3, #256
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #2
	strh	r3, [r7, #24]	@ movhi
	movs	r3, #10
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	TIM_Cmd
	ldr	r3, [r7, #36]
	ldr	r0, [r3]
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r2, r7, #12
	mov	r1, r3
	bl	timerOCInit
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	str	r0, [r7, #32]
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	mov	r2, r3
	movs	r1, #2
	ldr	r0, [r7, #32]
	bl	IOConfigGPIOAF
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [r7, #32]
	bl	IOInit
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	movs	r1, #1
	mov	r0, r3
	bl	TIM_CtrlPWMOutputs
.L8:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	movs	r1, #1
	mov	r0, r3
	bl	TIM_Cmd
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbTimerChannelInit, .-bbTimerChannelInit
	.section	.text.bbSwitchToOutput,"ax",%progbits
	.align	1
	.global	bbSwitchToOutput
	.syntax unified
	.thumb
	.thumb_func
	.type	bbSwitchToOutput, %function
bbSwitchToOutput:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.syntax unified
@ 465 "stm/lib/CMSIS/Core/Include/cmsis_gcc.h" 1
	MRS r3, basepri
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	strb	r3, [r7, #11]
	movs	r0, #80
	bl	__basepriSetMemRetVal
	mov	r3, r0
	strb	r3, [r7, #23]
	b	.L11
.L12:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	mvns	r3, r3
	and	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orrs	r2, r2, r1
	str	r2, [r3]
	movs	r3, #0
	strb	r3, [r7, #23]
.L11:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L12
	add	r3, r7, #11
	mov	r0, r3
	bl	__basepriRestoreMem
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	mov	r1, r3
	ldr	r0, [r7, #16]
	bl	bbLoadDMARegs
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbSwitchToOutput, .-bbSwitchToOutput
	.section	.text.bbDMAPreconfigure,"ax",%progbits
	.align	1
	.global	bbDMAPreconfigure
	.syntax unified
	.thumb
	.thumb_func
	.type	bbDMAPreconfigure, %function
bbDMAPreconfigure:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L14
	ldr	r3, [r7, #4]
	adds	r3, r3, #100
	b	.L15
.L14:
	ldr	r3, [r7, #4]
	adds	r3, r3, #172
.L15:
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	DMA_StructInit
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	mov	r2, #1024
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #56]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L16
	ldr	r3, [r7, #12]
	mov	r2, #131072
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #64
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #164]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #24
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	mov	r2, #4096
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #160]
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	mov	r2, #16384
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	DMA_Init
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	mov	r1, r3
	mov	r0, r2
	bl	bbSaveDMARegs
	b	.L18
.L16:
	ldr	r3, [r7, #12]
	mov	r2, #196608
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #236]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #16
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	mov	r2, #2048
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #232]
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	mov	r2, #16384
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	DMA_Init
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r1, r3
	mov	r0, r2
	bl	bbSaveDMARegs
.L18:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbDMAPreconfigure, .-bbDMAPreconfigure
	.section	.text.bbTIM_TimeBaseInit,"ax",%progbits
	.align	1
	.global	bbTIM_TimeBaseInit
	.syntax unified
	.thumb
	.thumb_func
	.type	bbTIM_TimeBaseInit, %function
bbTIM_TimeBaseInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldrh	r2, [r7, #2]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	ldr	r1, [r7, #12]
	mov	r0, r3
	bl	TIM_TimeBaseInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	movs	r1, #1
	mov	r0, r3
	bl	TIM_ARRPreloadConfig
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbTIM_TimeBaseInit, .-bbTIM_TimeBaseInit
	.section	.text.bbTIM_DMACmd,"ax",%progbits
	.align	1
	.global	bbTIM_DMACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	bbTIM_DMACmd, %function
bbTIM_DMACmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	mov	r3, r2
	strb	r3, [r7, #1]
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrh	r3, [r7, #2]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	TIM_DMACmd
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbTIM_DMACmd, .-bbTIM_DMACmd
	.section	.text.bbDMA_ITConfig,"ax",%progbits
	.align	1
	.global	bbDMA_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	bbDMA_ITConfig, %function
bbDMA_ITConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	movs	r2, #1
	movs	r1, #16
	mov	r0, r3
	bl	DMA_ITConfig
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbDMA_ITConfig, .-bbDMA_ITConfig
	.section	.text.bbDMA_Cmd,"ax",%progbits
	.align	1
	.global	bbDMA_Cmd
	.syntax unified
	.thumb
	.thumb_func
	.type	bbDMA_Cmd, %function
bbDMA_Cmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	DMA_Cmd
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbDMA_Cmd, .-bbDMA_Cmd
	.section	.text.bbDMA_Count,"ax",%progbits
	.align	1
	.global	bbDMA_Count
	.syntax unified
	.thumb
	.thumb_func
	.type	bbDMA_Count, %function
bbDMA_Count:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	DMA_GetCurrDataCounter
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbDMA_Count, .-bbDMA_Count
	.section	.text.bbDMAIrqHandler,"ax",%progbits
	.align	1
	.global	bbDMAIrqHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	bbDMAIrqHandler, %function
bbDMAIrqHandler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	bbDMA_Cmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #12]
	movs	r2, #0
	mov	r1, r3
	bl	bbTIM_DMACmd
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L26
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	subs	r3, r3, #32
	movs	r1, #8
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L27
.L26:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #8
	lsls	r3, r3, r1
	ands	r3, r3, r2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L27:
	cmp	r3, #0
	beq	.L28
.L29:
	b	.L29
.L28:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L30
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sub	r2, r3, #32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #32
	lsl	r2, r1, r2
	str	r2, [r3, #12]
	b	.L32
.L30:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #32
	lsls	r2, r2, r1
	str	r2, [r3, #8]
.L32:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	bbDMAIrqHandler, .-bbDMAIrqHandler
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
