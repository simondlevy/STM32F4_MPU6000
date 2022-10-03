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
	.file	"usb_io.c"
	.text
	.section	.bss.usbDetectPin,"aw",%nobits
	.align	2
	.type	usbDetectPin, %object
	.size	usbDetectPin, 4
usbDetectPin:
	.space	4
	.section	.text.usbCableDetectInit,"ax",%progbits
	.align	1
	.global	usbCableDetectInit
	.syntax unified
	.thumb
	.thumb_func
	.type	usbCableDetectInit, %function
usbCableDetectInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #0
	bl	IOGetByTag
	mov	r3, r0
	ldr	r2, .L2
	str	r3, [r2]
	ldr	r3, .L2
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #38
	mov	r0, r3
	bl	IOInit
	ldr	r3, .L2
	ldr	r3, [r3]
	movs	r1, #64
	mov	r0, r3
	bl	IOConfigGPIO
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	usbDetectPin
	.size	usbCableDetectInit, .-usbCableDetectInit
	.section	.text.usbGenerateDisconnectPulse,"ax",%progbits
	.align	1
	.global	usbGenerateDisconnectPulse
	.syntax unified
	.thumb
	.thumb_func
	.type	usbGenerateDisconnectPulse, %function
usbGenerateDisconnectPulse:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r0, #28
	bl	IOGetByTag
	str	r0, [r7, #4]
	movs	r1, #17
	ldr	r0, [r7, #4]
	bl	IOConfigGPIO
	ldr	r0, [r7, #4]
	bl	IOLo
	movs	r0, #200
	bl	delay
	ldr	r0, [r7, #4]
	bl	IOHi
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	usbGenerateDisconnectPulse, .-usbGenerateDisconnectPulse
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
