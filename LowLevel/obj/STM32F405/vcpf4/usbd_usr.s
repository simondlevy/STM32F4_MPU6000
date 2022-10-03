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
	.file	"usbd_usr.c"
	.text
	.global	USR_cb
	.section	.data.USR_cb,"aw"
	.align	2
	.type	USR_cb, %object
	.size	USR_cb, 28
USR_cb:
	.word	USBD_USR_Init
	.word	USBD_USR_DeviceReset
	.word	USBD_USR_DeviceConfigured
	.word	USBD_USR_DeviceSuspended
	.word	USBD_USR_DeviceResumed
	.word	USBD_USR_DeviceConnected
	.word	USBD_USR_DeviceDisconnected
	.section	.text.USBD_USR_Init,"ax",%progbits
	.align	1
	.global	USBD_USR_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_Init, %function
USBD_USR_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_USR_Init, .-USBD_USR_Init
	.section	.text.USBD_USR_DeviceReset,"ax",%progbits
	.align	1
	.global	USBD_USR_DeviceReset
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_DeviceReset, %function
USBD_USR_DeviceReset:
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
	beq	.L7
	cmp	r3, #1
	beq	.L8
	b	.L6
.L7:
	nop
	b	.L9
.L8:
	nop
.L6:
.L9:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_USR_DeviceReset, .-USBD_USR_DeviceReset
	.section	.text.USBD_USR_DeviceConfigured,"ax",%progbits
	.align	1
	.global	USBD_USR_DeviceConfigured
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_DeviceConfigured, %function
USBD_USR_DeviceConfigured:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_USR_DeviceConfigured, .-USBD_USR_DeviceConfigured
	.section	.text.USBD_USR_DeviceConnected,"ax",%progbits
	.align	1
	.global	USBD_USR_DeviceConnected
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_DeviceConnected, %function
USBD_USR_DeviceConnected:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_USR_DeviceConnected, .-USBD_USR_DeviceConnected
	.section	.text.USBD_USR_DeviceDisconnected,"ax",%progbits
	.align	1
	.global	USBD_USR_DeviceDisconnected
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_DeviceDisconnected, %function
USBD_USR_DeviceDisconnected:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_USR_DeviceDisconnected, .-USBD_USR_DeviceDisconnected
	.section	.text.USBD_USR_DeviceSuspended,"ax",%progbits
	.align	1
	.global	USBD_USR_DeviceSuspended
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_DeviceSuspended, %function
USBD_USR_DeviceSuspended:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_USR_DeviceSuspended, .-USBD_USR_DeviceSuspended
	.section	.text.USBD_USR_DeviceResumed,"ax",%progbits
	.align	1
	.global	USBD_USR_DeviceResumed
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_DeviceResumed, %function
USBD_USR_DeviceResumed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USBD_USR_DeviceResumed, .-USBD_USR_DeviceResumed
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
