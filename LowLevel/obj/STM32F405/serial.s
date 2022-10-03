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
	.file	"serial.c"
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
	.section	.bss._serialPortUsageList,"aw",%nobits
	.align	2
	.type	_serialPortUsageList, %object
	.size	_serialPortUsageList, 108
_serialPortUsageList:
	.space	108
	.section	.text.findSerialPortUsageByIdentifier,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	findSerialPortUsageByIdentifier, %function
findSerialPortUsageByIdentifier:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L2
.L5:
	ldrb	r2, [r7, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L6
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldrsb	r3, [r3, #8]
	ldrsb	r2, [r7, #7]
	cmp	r2, r3
	bne	.L3
	ldr	r3, [r7, #8]
	b	.L4
.L3:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #15]
.L2:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #8
	bls	.L5
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	_serialPortUsageList
	.size	findSerialPortUsageByIdentifier, .-findSerialPortUsageByIdentifier
	.section	.rodata.serialPortIdentifiers,"a"
	.align	2
	.type	serialPortIdentifiers, %object
	.size	serialPortIdentifiers, 9
serialPortIdentifiers:
	.byte	20
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	30
	.byte	31
	.section	.text.serialInit,"ax",%progbits
	.align	1
	.global	serialInit
	.syntax unified
	.thumb
	.thumb_func
	.type	serialInit, %function
serialInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r2, #108
	movs	r1, #0
	ldr	r0, .L15
	bl	memset
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L9
.L14:
	ldr	r2, .L15+4
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrsb	r0, [r3]
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	mov	r2, r0
	strb	r2, [r3]
	ldrsb	r3, [r7, #7]
	cmp	r3, #-1
	beq	.L10
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldrsb	r3, [r3]
	ldrsb	r2, [r7, #7]
	cmp	r2, r3
	bne	.L11
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	movs	r2, #255
	strb	r2, [r3]
	b	.L11
.L10:
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldrsb	r3, [r3]
	cmp	r3, #7
	bgt	.L11
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldrsb	r3, [r3]
	cmp	r3, #9
	bgt	.L12
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldrsb	r3, [r3]
	b	.L13
.L12:
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldrsb	r3, [r3]
	subs	r3, r3, #20
.L13:
	str	r3, [r7, #8]
	ldr	r2, .L15+8
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L11
	ldr	r2, .L15+12
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L11
	ldr	r1, .L15
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	movs	r2, #255
	strb	r2, [r3]
.L11:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L9:
	ldr	r3, [r7, #12]
	cmp	r3, #8
	ble	.L14
	nop
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	_serialPortUsageList
	.word	serialPortIdentifiers
	.word	IO_TAG_TX
	.word	IO_TAG_RX
	.size	serialInit, .-serialInit
	.section	.text.serialIsTransmitBufferEmpty,"ax",%progbits
	.align	1
	.global	serialIsTransmitBufferEmpty
	.syntax unified
	.thumb
	.thumb_func
	.type	serialIsTransmitBufferEmpty, %function
serialIsTransmitBufferEmpty:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialIsTransmitBufferEmpty, .-serialIsTransmitBufferEmpty
	.section	.text.serialOpenPort,"ax",%progbits
	.align	1
	.global	serialOpenPort
	.syntax unified
	.thumb
	.thumb_func
	.type	serialOpenPort, %function
serialOpenPort:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrsb	r3, [r7, #15]
	mov	r0, r3
	bl	findSerialPortUsageByIdentifier
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L21
.L20:
	movs	r3, #0
	b	.L22
.L21:
	movs	r3, #0
	str	r3, [r7, #20]
	ldrsb	r3, [r7, #15]
	cmp	r3, #5
	bgt	.L23
	cmp	r3, #0
	bge	.L24
	b	.L28
.L23:
	cmp	r3, #20
	bne	.L28
	bl	usbVcpOpen
	str	r0, [r7, #20]
	b	.L26
.L24:
	ldrb	r0, [r7, #15]	@ zero_extendqisi2
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	str	r3, [sp, #4]
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	str	r3, [sp]
	ldr	r3, [r7, #32]
	ldr	r2, [r7]
	ldr	r1, [r7, #4]
	bl	uartOpen
	str	r0, [r7, #20]
	b	.L26
.L28:
	nop
.L26:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L27
	movs	r3, #0
	b	.L22
.L27:
	ldrb	r2, [r7, #15]	@ zero_extendqisi2
	ldr	r3, [r7, #20]
	strb	r2, [r3, #56]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
.L22:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialOpenPort, .-serialOpenPort
	.section	.text.serialRead,"ax",%progbits
	.align	1
	.global	serialRead
	.syntax unified
	.thumb
	.thumb_func
	.type	serialRead, %function
serialRead:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialRead, .-serialRead
	.section	.text.serialBytesAvailable,"ax",%progbits
	.align	1
	.global	serialBytesAvailable
	.syntax unified
	.thumb
	.thumb_func
	.type	serialBytesAvailable, %function
serialBytesAvailable:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialBytesAvailable, .-serialBytesAvailable
	.section	.text.serialTxBytesFree,"ax",%progbits
	.align	1
	.global	serialTxBytesFree
	.syntax unified
	.thumb
	.thumb_func
	.type	serialTxBytesFree, %function
serialTxBytesFree:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialTxBytesFree, .-serialTxBytesFree
	.section	.text.serialWrite,"ax",%progbits
	.align	1
	.global	serialWrite
	.syntax unified
	.thumb
	.thumb_func
	.type	serialWrite, %function
serialWrite:
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
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialWrite, .-serialWrite
	.section	.text.serialWriteBuf,"ax",%progbits
	.align	1
	.global	serialWriteBuf
	.syntax unified
	.thumb
	.thumb_func
	.type	serialWriteBuf, %function
serialWriteBuf:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #16]
	blx	r3
	b	.L42
.L37:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L39
.L41:
	nop
.L40:
	ldr	r0, [r7, #16]
	bl	serialTxBytesFree
	mov	r3, r0
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #16]
	bl	serialWrite
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L39:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L41
.L42:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialWriteBuf, .-serialWriteBuf
	.section	.text.serialOpenPortDsmx,"ax",%progbits
	.align	1
	.global	serialOpenPortDsmx
	.syntax unified
	.thumb
	.thumb_func
	.type	serialOpenPortDsmx, %function
serialOpenPortDsmx:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #16
	mov	r3, r0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #15]
	ldrsb	r0, [r7, #15]
	movs	r3, #0
	str	r3, [sp, #8]
	movs	r3, #1
	str	r3, [sp, #4]
	movs	r3, #5
	str	r3, [sp]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	movs	r1, #64
	bl	serialOpenPort
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialOpenPortDsmx, .-serialOpenPortDsmx
	.section	.text.serialOpenPortSbus,"ax",%progbits
	.align	1
	.global	serialOpenPortSbus
	.syntax unified
	.thumb
	.thumb_func
	.type	serialOpenPortSbus, %function
serialOpenPortSbus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #16
	mov	r3, r0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #15]
	ldrsb	r0, [r7, #15]
	movs	r3, #7
	str	r3, [sp, #8]
	movs	r3, #1
	str	r3, [sp, #4]
	ldr	r3, .L45
	str	r3, [sp]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	movs	r1, #64
	bl	serialOpenPort
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	100000
	.size	serialOpenPortSbus, .-serialOpenPortSbus
	.section	.text.serialOpenPortUsb,"ax",%progbits
	.align	1
	.global	serialOpenPortUsb
	.syntax unified
	.thumb
	.thumb_func
	.type	serialOpenPortUsb, %function
serialOpenPortUsb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #16
	movs	r3, #0
	str	r3, [sp, #8]
	movs	r3, #3
	str	r3, [sp, #4]
	movs	r3, #5
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #1
	movs	r0, #20
	bl	serialOpenPort
	mov	r3, r0
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	serialOpenPortUsb, .-serialOpenPortUsb
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
