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
	.file	"serial_uart_stm32f405.c"
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
	.global	uartHardware
	.section	.rodata.uartHardware,"a"
	.align	2
	.type	uartHardware, %object
	.size	uartHardware, 364
uartHardware:
	.byte	0
	.space	3
	.word	1073811456
	.space	8
	.word	134217728
	.word	134217728
	.byte	26
	.byte	39
	.space	2
	.byte	25
	.byte	38
	.space	2
	.byte	68
	.byte	7
	.byte	37
	.byte	80
	.byte	80
	.space	3
	.word	uart1TxBuffer
	.word	uart1RxBuffer
	.short	256
	.short	128
	.byte	1
	.space	3
	.word	1073759232
	.space	8
	.word	134217728
	.word	134217728
	.byte	19
	.byte	70
	.space	2
	.byte	18
	.byte	69
	.space	2
	.byte	113
	.byte	7
	.byte	38
	.byte	64
	.byte	96
	.space	3
	.word	uart2TxBuffer
	.word	uart2RxBuffer
	.short	256
	.short	128
	.byte	2
	.space	3
	.word	1073760256
	.space	8
	.word	134217728
	.word	134217728
	.byte	43
	.byte	59
	.byte	73
	.space	1
	.byte	42
	.byte	58
	.byte	72
	.space	1
	.byte	114
	.byte	7
	.byte	39
	.byte	64
	.byte	96
	.space	3
	.word	uart3TxBuffer
	.word	uart3RxBuffer
	.short	256
	.short	128
	.byte	3
	.space	3
	.word	1073761280
	.space	8
	.word	134217728
	.word	134217728
	.byte	17
	.byte	59
	.space	2
	.byte	16
	.byte	58
	.space	2
	.byte	115
	.byte	8
	.byte	52
	.byte	64
	.byte	96
	.space	3
	.word	uart4TxBuffer
	.word	uart4RxBuffer
	.short	256
	.short	128
	.byte	4
	.space	3
	.word	1073762304
	.space	8
	.word	134217728
	.word	134217728
	.byte	66
	.space	3
	.byte	60
	.space	3
	.byte	116
	.byte	8
	.byte	53
	.byte	64
	.byte	96
	.space	3
	.word	uart5TxBuffer
	.word	uart5RxBuffer
	.short	256
	.short	128
	.byte	5
	.space	3
	.word	1073812480
	.space	8
	.word	167772160
	.word	167772160
	.byte	55
	.byte	0
	.space	2
	.byte	54
	.byte	0
	.space	2
	.byte	69
	.byte	8
	.byte	71
	.byte	64
	.byte	96
	.space	3
	.word	uart6TxBuffer
	.word	uart6RxBuffer
	.short	256
	.short	128
	.space	52
	.section	.text.handleUsartTxDma,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	handleUsartTxDma, %function
handleUsartTxDma:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uartTryStartTxDMA
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	handleUsartTxDma, .-handleUsartTxDma
	.section	.text.uartDmaIrqHandler,"ax",%progbits
	.align	1
	.global	uartDmaIrqHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	uartDmaIrqHandler, %function
uartDmaIrqHandler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	subs	r3, r3, #32
	movs	r1, #32
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L4
.L3:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #32
	lsls	r3, r3, r1
	ands	r3, r3, r2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L4:
	cmp	r3, #0
	beq	.L5
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L6
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sub	r2, r3, #32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #32
	lsl	r2, r1, r2
	str	r2, [r3, #12]
	b	.L7
.L6:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #32
	lsls	r2, r2, r1
	str	r2, [r3, #8]
.L7:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L8
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sub	r2, r3, #32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #16
	lsl	r2, r1, r2
	str	r2, [r3, #12]
	b	.L9
.L8:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #16
	lsls	r2, r2, r1
	str	r2, [r3, #8]
.L9:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L10
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	subs	r3, r3, #32
	lsr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L11
.L10:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #20]	@ zero_extendqisi2
	lsrs	r3, r3, r2
	and	r3, r3, #1
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L11:
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L13
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sub	r2, r3, #32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #1
	lsl	r2, r1, r2
	str	r2, [r3, #12]
	b	.L12
.L13:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	lsls	r2, r2, r1
	str	r2, [r3, #8]
.L12:
	ldr	r0, [r7, #12]
	bl	handleUsartTxDma
.L5:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L14
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
	b	.L15
.L14:
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
.L15:
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L17
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sub	r2, r3, #32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #8
	lsl	r2, r1, r2
	str	r2, [r3, #12]
	b	.L16
.L17:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #8
	lsls	r2, r2, r1
	str	r2, [r3, #8]
.L16:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	subs	r3, r3, #32
	movs	r1, #4
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L19
.L18:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #4
	lsls	r3, r3, r1
	ands	r3, r3, r2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L19:
	cmp	r3, #0
	beq	.L22
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L21
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sub	r2, r3, #32
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r1, #4
	lsl	r2, r1, r2
	str	r2, [r3, #12]
	b	.L22
.L21:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	lsls	r2, r2, r1
	str	r2, [r3, #8]
.L22:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uartDmaIrqHandler, .-uartDmaIrqHandler
	.section	.text.serialUART,"ax",%progbits
	.align	1
	.global	serialUART
	.syntax unified
	.thumb
	.thumb_func
	.type	serialUART, %function
serialUART:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r1, [r7]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r2, .L35
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L24
	movs	r3, #0
	b	.L25
.L24:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #104]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L26
	movs	r3, #0
	b	.L25
.L26:
	ldr	r3, [r7, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, .L35+4
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #50]
	mov	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #48]
	mov	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #96]
	ldr	r0, [r7, #28]
	bl	uartConfigureDma
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #109]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	str	r0, [r7, #16]
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #108]	@ zero_extendqisi2
	mov	r0, r3
	bl	IOGetByTag
	str	r0, [r7, #12]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	movs	r1, #1
	mov	r0, r3
	bl	RCC_ClockCmd
.L27:
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L28
	ldrb	r3, [r7, #7]
	adds	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #11
	ldr	r0, [r7, #16]
	bl	IOInit
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L29
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L30
.L29:
	movs	r1, #2
	b	.L31
.L30:
	movs	r1, #18
.L31:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r0, [r7, #16]
	bl	IOConfigGPIOAF
	b	.L32
.L28:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L33
	ldrb	r3, [r7, #7]
	adds	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #11
	ldr	r0, [r7, #16]
	bl	IOInit
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	mov	r2, r3
	movs	r1, #34
	ldr	r0, [r7, #16]
	bl	IOConfigGPIOAF
.L33:
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L32
	ldrb	r3, [r7, #7]
	adds	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	movs	r1, #12
	ldr	r0, [r7, #12]
	bl	IOInit
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	mov	r2, r3
	movs	r1, #34
	ldr	r0, [r7, #12]
	bl	IOConfigGPIOAF
.L32:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #34]	@ zero_extendqisi2
	strb	r3, [r7, #8]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #36]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r3, r3
	strb	r3, [r7, #9]
	movs	r3, #0
	strb	r3, [r7, #10]
	movs	r3, #1
	strb	r3, [r7, #11]
	add	r3, r7, #8
	mov	r0, r3
	bl	NVIC_Init
.L34:
	ldr	r3, [r7, #20]
.L25:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L36:
	.align	2
.L35:
	.word	uartDevmap
	.word	uartVTable
	.size	serialUART, .-serialUART
	.section	.text.uartIrqHandler,"ax",%progbits
	.align	1
	.global	uartIrqHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	uartIrqHandler, %function
uartIrqHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movw	r1, #1317
	mov	r0, r3
	bl	USART_GetITStatus
	mov	r3, r0
	cmp	r3, #1
	bne	.L38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r3, r3
	uxtb	r5, r3
	ldr	r3, [r7, #4]
	ldr	r6, [r3, #48]
	bl	microsISR
	mov	r3, r0
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	blx	r4
	b	.L38
.L39:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldrh	r3, [r3, #4]	@ movhi
	uxth	r1, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #12]
	udiv	r1, r3, r2
	mul	r2, r1, r2
	subs	r2, r3, r2
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
.L38:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L40
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movw	r1, #1831
	mov	r0, r3
	bl	USART_GetITStatus
	mov	r3, r0
	cmp	r3, #1
	bne	.L40
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	beq	.L41
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #96]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	add	r3, r3, r2
	ldrb	r3, [r3]
	uxtb	r3, r3
	uxth	r3, r3
	mov	r1, r3
	bl	USART_SendData
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #16]
	udiv	r1, r3, r2
	mul	r2, r1, r2
	subs	r2, r3, r2
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	b	.L40
.L41:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movs	r2, #0
	movw	r1, #1831
	mov	r0, r3
	bl	USART_ITConfig
.L40:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	mov	r1, #864
	mov	r0, r3
	bl	USART_GetITStatus
	mov	r3, r0
	cmp	r3, #1
	bne	.L42
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	mov	r1, #864
	mov	r0, r3
	bl	USART_ClearITPendingBit
.L42:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	movw	r1, #1060
	mov	r0, r3
	bl	USART_GetITStatus
	mov	r3, r0
	cmp	r3, #1
	bne	.L45
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	blx	r3
.L44:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldrh	r3, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldrh	r3, [r3, #4]	@ movhi
.L45:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	uartIrqHandler, .-uartIrqHandler
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
