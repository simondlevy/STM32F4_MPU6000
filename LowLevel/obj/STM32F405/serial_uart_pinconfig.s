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
	.file	"serial_uart_pinconfig.c"
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
	.global	uartDevice
	.section	.fastram_bss,"aw"
	.align	2
	.type	uartDevice, %object
	.size	uartDevice, 840
uartDevice:
	.space	840
	.global	uartDevmap
	.align	2
	.type	uartDevmap, %object
	.size	uartDevmap, 24
uartDevmap:
	.space	24
	.section	.text.serialUartPinConfigure,"ax",%progbits
	.align	1
	.global	serialUartPinConfigure
	.syntax unified
	.thumb
	.thumb_func
	.type	serialUartPinConfigure, %function
serialUartPinConfigure:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	ldr	r3, .L10
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L2
.L9:
	ldr	r3, [r7, #16]
	movs	r2, #52
	mul	r3, r2, r3
	ldr	r2, .L10+4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L3
.L6:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r2, .L10+8
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	adds	r3, r3, #24
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L4
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	adds	r2, r2, #24
	ldrb	r2, [r2]
	strb	r2, [r3, #108]
.L4:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r2, .L10+12
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	adds	r3, r3, #28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L5
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	adds	r2, r2, #28
	ldrb	r2, [r2]
	strb	r2, [r3, #109]
.L5:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L3:
	ldr	r3, [r7, #12]
	cmp	r3, #3
	ble	.L6
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #108]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L7
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #109]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L8
.L7:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3, #104]
	ldr	r3, [r7, #20]
	add	r2, r3, #120
	str	r2, [r7, #20]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L10+16
	str	r3, [r1, r2, lsl #2]
.L8:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L2:
	ldr	r3, [r7, #16]
	cmp	r3, #6
	bls	.L9
	nop
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	uartDevice
	.word	uartHardware
	.word	IO_TAG_RX
	.word	IO_TAG_TX
	.word	uartDevmap
	.size	serialUartPinConfigure, .-serialUartPinConfigure
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
