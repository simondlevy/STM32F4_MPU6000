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
	.file	"serial_uart.c"
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
	.global	uart1TxBuffer
	.section	.bss.uart1TxBuffer,"aw",%nobits
	.align	2
	.type	uart1TxBuffer, %object
	.size	uart1TxBuffer, 256
uart1TxBuffer:
	.space	256
	.global	uart1RxBuffer
	.section	.bss.uart1RxBuffer,"aw",%nobits
	.align	2
	.type	uart1RxBuffer, %object
	.size	uart1RxBuffer, 128
uart1RxBuffer:
	.space	128
	.global	uart2TxBuffer
	.section	.bss.uart2TxBuffer,"aw",%nobits
	.align	2
	.type	uart2TxBuffer, %object
	.size	uart2TxBuffer, 256
uart2TxBuffer:
	.space	256
	.global	uart2RxBuffer
	.section	.bss.uart2RxBuffer,"aw",%nobits
	.align	2
	.type	uart2RxBuffer, %object
	.size	uart2RxBuffer, 128
uart2RxBuffer:
	.space	128
	.global	uart3TxBuffer
	.section	.bss.uart3TxBuffer,"aw",%nobits
	.align	2
	.type	uart3TxBuffer, %object
	.size	uart3TxBuffer, 256
uart3TxBuffer:
	.space	256
	.global	uart3RxBuffer
	.section	.bss.uart3RxBuffer,"aw",%nobits
	.align	2
	.type	uart3RxBuffer, %object
	.size	uart3RxBuffer, 128
uart3RxBuffer:
	.space	128
	.global	uart4TxBuffer
	.section	.bss.uart4TxBuffer,"aw",%nobits
	.align	2
	.type	uart4TxBuffer, %object
	.size	uart4TxBuffer, 256
uart4TxBuffer:
	.space	256
	.global	uart4RxBuffer
	.section	.bss.uart4RxBuffer,"aw",%nobits
	.align	2
	.type	uart4RxBuffer, %object
	.size	uart4RxBuffer, 128
uart4RxBuffer:
	.space	128
	.global	uart5TxBuffer
	.section	.bss.uart5TxBuffer,"aw",%nobits
	.align	2
	.type	uart5TxBuffer, %object
	.size	uart5TxBuffer, 256
uart5TxBuffer:
	.space	256
	.global	uart5RxBuffer
	.section	.bss.uart5RxBuffer,"aw",%nobits
	.align	2
	.type	uart5RxBuffer, %object
	.size	uart5RxBuffer, 128
uart5RxBuffer:
	.space	128
	.global	uart6TxBuffer
	.section	.bss.uart6TxBuffer,"aw",%nobits
	.align	2
	.type	uart6TxBuffer, %object
	.size	uart6TxBuffer, 256
uart6TxBuffer:
	.space	256
	.global	uart6RxBuffer
	.section	.bss.uart6RxBuffer,"aw",%nobits
	.align	2
	.type	uart6RxBuffer, %object
	.size	uart6RxBuffer, 128
uart6RxBuffer:
	.space	128
	.section	.text.uartOpen,"ax",%progbits
	.align	1
	.global	uartOpen
	.syntax unified
	.thumb
	.thumb_func
	.type	uartOpen, %function
uartOpen:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	ldrb	r2, [r7, #32]	@ zero_extendqisi2
	ldrb	r0, [r7, #15]	@ zero_extendqisi2
	ldr	r1, [r7]
	bl	serialUART
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L2
	ldr	r3, [r7, #20]
	b	.L3
.L2:
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3, #100]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #20]
	str	r2, [r3, #28]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #20]
	str	r2, [r3, #36]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3, #44]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #20]
	ldrb	r2, [r7, #32]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldrb	r2, [r7, #36]
	strb	r2, [r3, #5]
	ldr	r0, [r7, #20]
	bl	uartReconfigure
	ldr	r3, [r7, #20]
.L3:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uartOpen, .-uartOpen
	.section	.text.uartSetBaudRate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uartSetBaudRate, %function
uartSetBaudRate:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r0, [r7, #12]
	bl	uartReconfigure
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uartSetBaudRate, .-uartSetBaudRate
	.section	.text.uartSetMode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uartSetMode, %function
uartSetMode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #4]
	ldr	r0, [r7, #12]
	bl	uartReconfigure
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uartSetMode, .-uartSetMode
	.section	.text.uartTotalRxBytesWaiting,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uartTotalRxBytesWaiting, %function
uartTotalRxBytesWaiting:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	mov	r0, r3
	bl	DMA_GetCurrDataCounter
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bhi	.L8
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	b	.L9
.L8:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	b	.L9
.L7:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bcc	.L10
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	subs	r3, r2, r3
	b	.L9
.L10:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	subs	r3, r2, r3
.L9:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uartTotalRxBytesWaiting, .-uartTotalRxBytesWaiting
	.section	.text.uartTotalTxBytesFree,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uartTotalTxBytesFree, %function
uartTotalTxBytesFree:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bcc	.L12
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	b	.L13
.L12:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	subs	r3, r2, r3
	str	r3, [r7, #12]
.L13:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #64]
	mov	r0, r3
	bl	DMA_GetCurrDataCounter
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L14
	movs	r3, #0
	b	.L15
.L14:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	subs	r3, r3, #1
.L15:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uartTotalTxBytesFree, .-uartTotalTxBytesFree
	.section	.text.isUartTransmitBufferEmpty,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	isUartTransmitBufferEmpty, %function
isUartTransmitBufferEmpty:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #100]	@ zero_extendqisi2
	b	.L18
.L17:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
.L18:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	isUartTransmitBufferEmpty, .-isUartTransmitBufferEmpty
	.section	.text.uartRead,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uartRead, %function
uartRead:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	subs	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	subs	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #84]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L21
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	str	r2, [r3, #84]
	b	.L21
.L20:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcc	.L22
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #32]
	b	.L21
.L22:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #32]
.L21:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	uartRead, .-uartRead
	.section	.text.uartWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	uartWrite, %function
uartWrite:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	add	r3, r3, r2
	ldrb	r2, [r7, #3]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bcc	.L25
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	b	.L26
.L25:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
.L26:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L27
	ldr	r0, [r7, #12]
	bl	uartTryStartTxDMA
	b	.L29
.L27:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	movs	r2, #1
	movw	r1, #1831
	mov	r0, r3
	bl	USART_ITConfig
.L29:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	uartWrite, .-uartWrite
	.global	uartVTable
	.section	.rodata.uartVTable,"a"
	.align	2
	.type	uartVTable, %object
	.size	uartVTable, 48
uartVTable:
	.word	uartWrite
	.word	uartTotalRxBytesWaiting
	.word	uartTotalTxBytesFree
	.word	uartRead
	.word	uartSetBaudRate
	.word	isUartTransmitBufferEmpty
	.word	uartSetMode
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.uartConfigureDma,"ax",%progbits
	.align	1
	.global	uartConfigureDma
	.syntax unified
	.thumb
	.thumb_func
	.type	uartConfigureDma, %function
uartConfigureDma:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #64]
	mov	r0, r3
	bl	dmaGetIdentifier
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	movs	r1, #11
	mov	r0, r3
	bl	dmaAllocate
	mov	r3, r0
	cmp	r3, #0
	beq	.L31
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	bl	dmaEnable
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #35]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldrb	r0, [r7, #15]	@ zero_extendqisi2
	ldr	r1, .L34
	bl	dmaSetHandler
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #88]
.L31:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #60]
	mov	r0, r3
	bl	dmaGetIdentifier
	mov	r3, r0
	strb	r3, [r7, #14]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	movs	r1, #12
	mov	r0, r3
	bl	dmaAllocate
	mov	r3, r0
	cmp	r3, #0
	beq	.L33
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r0, r3
	bl	dmaEnable
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	adds	r3, r3, #4
	mov	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #92]
.L33:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	uartDmaIrqHandler
	.size	uartConfigureDma, .-uartConfigureDma
	.section	.text.USART1_IRQHandler,"ax",%progbits
	.align	1
	.global	USART1_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	USART1_IRQHandler, %function
USART1_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L37
	ldr	r3, [r3]
	str	r3, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uartIrqHandler
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	uartDevmap
	.size	USART1_IRQHandler, .-USART1_IRQHandler
	.section	.text.USART2_IRQHandler,"ax",%progbits
	.align	1
	.global	USART2_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	USART2_IRQHandler, %function
USART2_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L40
	ldr	r3, [r3, #4]
	str	r3, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uartIrqHandler
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	uartDevmap
	.size	USART2_IRQHandler, .-USART2_IRQHandler
	.section	.text.USART3_IRQHandler,"ax",%progbits
	.align	1
	.global	USART3_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	USART3_IRQHandler, %function
USART3_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L43
	ldr	r3, [r3, #8]
	str	r3, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uartIrqHandler
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L44:
	.align	2
.L43:
	.word	uartDevmap
	.size	USART3_IRQHandler, .-USART3_IRQHandler
	.section	.text.UART4_IRQHandler,"ax",%progbits
	.align	1
	.global	UART4_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	UART4_IRQHandler, %function
UART4_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L46
	ldr	r3, [r3, #12]
	str	r3, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uartIrqHandler
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	uartDevmap
	.size	UART4_IRQHandler, .-UART4_IRQHandler
	.section	.text.UART5_IRQHandler,"ax",%progbits
	.align	1
	.global	UART5_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	UART5_IRQHandler, %function
UART5_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L49
	ldr	r3, [r3, #16]
	str	r3, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uartIrqHandler
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L50:
	.align	2
.L49:
	.word	uartDevmap
	.size	UART5_IRQHandler, .-UART5_IRQHandler
	.section	.text.USART6_IRQHandler,"ax",%progbits
	.align	1
	.global	USART6_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	USART6_IRQHandler, %function
USART6_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r3, .L52
	ldr	r3, [r3, #20]
	str	r3, [r7, #4]
	ldr	r0, [r7, #4]
	bl	uartIrqHandler
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L53:
	.align	2
.L52:
	.word	uartDevmap
	.size	USART6_IRQHandler, .-USART6_IRQHandler
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
