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
	.file	"stm32f4xx_it.c"
	.text
	.section	.text.NMI_Handler,"ax",%progbits
	.align	1
	.global	NMI_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	NMI_Handler, %function
NMI_Handler:
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
	.size	NMI_Handler, .-NMI_Handler
	.section	.text.SVC_Handler,"ax",%progbits
	.align	1
	.global	SVC_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	SVC_Handler, %function
SVC_Handler:
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
	.size	SVC_Handler, .-SVC_Handler
	.section	.text.DebugMon_Handler,"ax",%progbits
	.align	1
	.global	DebugMon_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	DebugMon_Handler, %function
DebugMon_Handler:
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
	.size	DebugMon_Handler, .-DebugMon_Handler
	.section	.text.PendSV_Handler,"ax",%progbits
	.align	1
	.global	PendSV_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	PendSV_Handler, %function
PendSV_Handler:
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
	.size	PendSV_Handler, .-PendSV_Handler
	.section	.text.OTG_FS_WKUP_IRQHandler,"ax",%progbits
	.align	1
	.global	OTG_FS_WKUP_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	OTG_FS_WKUP_IRQHandler, %function
OTG_FS_WKUP_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L7
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L6
	ldr	r3, .L7+4
	ldr	r3, [r3]
	ldr	r2, .L7+4
	bic	r3, r3, #6
	str	r3, [r2]
	bl	SystemInit
	ldr	r0, .L7
	bl	USB_OTG_UngateClock
.L6:
	mov	r0, #262144
	bl	EXTI_ClearITPendingBit
	nop
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	USB_OTG_dev
	.word	-536810224
	.size	OTG_FS_WKUP_IRQHandler, .-OTG_FS_WKUP_IRQHandler
	.section	.text.OTG_FS_IRQHandler,"ax",%progbits
	.align	1
	.global	OTG_FS_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	OTG_FS_IRQHandler, %function
OTG_FS_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r0, .L10
	bl	USBD_OTG_ISR_Handler
	nop
	pop	{r7, pc}
.L11:
	.align	2
.L10:
	.word	USB_OTG_dev
	.size	OTG_FS_IRQHandler, .-OTG_FS_IRQHandler
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
