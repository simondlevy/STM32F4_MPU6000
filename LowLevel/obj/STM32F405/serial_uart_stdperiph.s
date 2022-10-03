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
	.file	"serial_uart_stdperiph.c"
	.text
	.section	.rodata.IO_TAG_RX,"a"
	.align	2
	.type	IO_TAG_RX, %object
	.size	IO_TAG_RX, 12
IO_TAG_RX:
	.ascii	"\032\000+\021B7\000\000\000\000\000\000"
	.section	.rodata.IO_TAG_TX,"a"
	.align	2
	.type	IO_TAG_TX, %object
	.size	IO_TAG_TX, 12
IO_TAG_TX:
	.ascii	"\031\000*\020\0006\000\000\000\000\000\000"
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
	.section	.text.usartConfigurePinInversion,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	usartConfigurePinInversion, %function
usartConfigurePinInversion:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r1, #1
	mov	r0, r3
	bl	enableInverter
.L6:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usartConfigurePinInversion, .-usartConfigurePinInversion
	.section	.text.uartReconfigure,"ax",%progbits
	.align	1
	.global	uartReconfigure
	.syntax unified
	.thumb
	.thumb_func
	.type	uartReconfigure, %function
uartReconfigure:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r1, #0
	mov	r0, r3
	bl	USART_Cmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L8
	mov	r3, #4096
	strh	r3, [r7, #76]	@ movhi
	b	.L9
.L8:
	movs	r3, #0
	strh	r3, [r7, #76]	@ movhi
.L9:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	lsls	r3, r3, #12
	uxth	r3, r3
	and	r3, r3, #8192
	uxth	r3, r3
	strh	r3, [r7, #78]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r3, r3
	and	r3, r3, #1024
	uxth	r3, r3
	strh	r3, [r7, #80]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #84]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #82]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L10
	ldrh	r3, [r7, #82]
	orr	r3, r3, #4
	uxth	r3, r3
	strh	r3, [r7, #82]	@ movhi
.L10:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L11
	ldrh	r3, [r7, #82]
	orr	r3, r3, #8
	uxth	r3, r3
	strh	r3, [r7, #82]	@ movhi
.L11:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	add	r2, r7, #72
	mov	r1, r2
	mov	r0, r3
	bl	USART_Init
	ldr	r0, [r7, #4]
	bl	usartConfigurePinInversion
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r1, #1
	mov	r0, r3
	bl	USART_HalfDuplexCmd
	b	.L13
.L12:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r1, #0
	mov	r0, r3
	bl	USART_HalfDuplexCmd
.L13:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r1, #1
	mov	r0, r3
	bl	USART_Cmd
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L15
	add	r3, r7, #12
	mov	r0, r3
	bl	DMA_StructInit
	mov	r3, #256
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	str	r3, [r7, #16]
	mov	r3, #65536
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #40]
	mov	r3, #1024
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r0, r3
	bl	DMA_DeInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	DMA_Init
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	movs	r1, #1
	mov	r0, r3
	bl	DMA_Cmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r2, #1
	movs	r1, #64
	mov	r0, r3
	bl	USART_DMACmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	mov	r0, r3
	bl	DMA_GetCurrDataCounter
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	b	.L14
.L15:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movw	r1, #1317
	mov	r0, r3
	bl	USART_ClearITPendingBit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r2, #1
	movw	r1, #1317
	mov	r0, r3
	bl	USART_ITConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r2, #1
	movw	r1, #1060
	mov	r0, r3
	bl	USART_ITConfig
.L14:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L17
	add	r3, r7, #12
	mov	r0, r3
	bl	DMA_StructInit
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	str	r3, [r7, #16]
	mov	r3, #65536
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #40]
	mov	r3, #1024
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	str	r3, [r7, #12]
	movs	r3, #64
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r0, r3
	bl	DMA_DeInit
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	DMA_Init
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	movs	r2, #1
	movs	r1, #150
	mov	r0, r3
	bl	DMA_ITConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	movs	r1, #0
	mov	r0, r3
	bl	DMA_SetCurrDataCounter
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r2, #1
	movs	r1, #128
	mov	r0, r3
	bl	USART_DMACmd
	b	.L16
.L17:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r2, #1
	movw	r1, #1831
	mov	r0, r3
	bl	USART_ITConfig
.L16:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r1, #1
	mov	r0, r3
	bl	USART_Cmd
	nop
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uartReconfigure, .-uartReconfigure
	.section	.text.uartTryStartTxDMA,"ax",%progbits
	.align	1
	.global	uartTryStartTxDMA
	.syntax unified
	.thumb
	.thumb_func
	.type	uartTryStartTxDMA, %function
uartTryStartTxDMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
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
	movs	r0, #80
	bl	__basepriSetMemRetVal
	mov	r3, r0
	strb	r3, [r7, #23]
	b	.L20
.L28:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L21
	movs	r4, #0
	b	.L22
.L21:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r0, r3
	bl	DMA_GetCurrDataCounter
	mov	r3, r0
	cmp	r3, #0
	bne	.L31
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bne	.L25
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #100]
	movs	r4, #0
	b	.L22
.L25:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	add	r3, r3, r2
	movs	r2, #0
	mov	r1, r3
	bl	DMA_MemoryTargetConfig
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bls	.L26
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	mov	r1, r3
	bl	DMA_SetCurrDataCounter
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	b	.L27
.L26:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	mov	r1, r3
	bl	DMA_SetCurrDataCounter
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
.L27:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #100]
	b	.L24
.L31:
	nop
.L24:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	movs	r1, #1
	mov	r0, r3
	bl	DMA_Cmd
	movs	r3, #0
	strb	r3, [r7, #23]
.L20:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L28
	movs	r4, #1
.L22:
	add	r3, r7, #15
	mov	r0, r3
	bl	__basepriRestoreMem
	cmp	r4, #1
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	uartTryStartTxDMA, .-uartTryStartTxDMA
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
