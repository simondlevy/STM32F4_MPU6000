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
	.file	"usb_bsp.c"
	.text
	.section	.text.USB_OTG_BSP_ConfigVBUS,"ax",%progbits
	.align	1
	.global	USB_OTG_BSP_ConfigVBUS
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_BSP_ConfigVBUS, %function
USB_OTG_BSP_ConfigVBUS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_BSP_ConfigVBUS, .-USB_OTG_BSP_ConfigVBUS
	.section	.text.USB_OTG_BSP_DriveVBUS,"ax",%progbits
	.align	1
	.global	USB_OTG_BSP_DriveVBUS
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_BSP_DriveVBUS, %function
USB_OTG_BSP_DriveVBUS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	USB_OTG_BSP_DriveVBUS, .-USB_OTG_BSP_DriveVBUS
	.section	.text.USB_OTG_BSP_Init,"ax",%progbits
	.align	1
	.global	USB_OTG_BSP_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_BSP_Init, %function
USB_OTG_BSP_Init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #67
	strb	r3, [r7, #12]
	movs	r3, #2
	strb	r3, [r7, #13]
	movs	r3, #0
	strb	r3, [r7, #14]
	movs	r3, #0
	strb	r3, [r7, #15]
	add	r3, r7, #12
	mov	r0, r3
	bl	NVIC_Init
	movs	r1, #1
	movs	r0, #1
	bl	RCC_AHB1PeriphClockCmd
	mov	r3, #6144
	str	r3, [r7, #16]
	movs	r3, #3
	strb	r3, [r7, #21]
	movs	r3, #2
	strb	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #22]
	movs	r3, #0
	strb	r3, [r7, #23]
	add	r3, r7, #16
	mov	r1, r3
	ldr	r0, .L4
	bl	GPIO_Init
	movs	r2, #10
	movs	r1, #11
	ldr	r0, .L4
	bl	GPIO_PinAFConfig
	movs	r2, #10
	movs	r1, #12
	ldr	r0, .L4
	bl	GPIO_PinAFConfig
	movs	r1, #1
	mov	r0, #16384
	bl	RCC_APB2PeriphClockCmd
	movs	r1, #1
	movs	r0, #128
	bl	RCC_AHB2PeriphClockCmd
	movs	r0, #1
	bl	EXTI_ClearITPendingBit
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	1073872896
	.size	USB_OTG_BSP_Init, .-USB_OTG_BSP_Init
	.section	.text.USB_OTG_BSP_EnableInterrupt,"ax",%progbits
	.align	1
	.global	USB_OTG_BSP_EnableInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_BSP_EnableInterrupt, %function
USB_OTG_BSP_EnableInterrupt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r0, #1280
	bl	NVIC_PriorityGroupConfig
	movs	r3, #67
	strb	r3, [r7, #12]
	movs	r3, #2
	strb	r3, [r7, #13]
	movs	r3, #0
	strb	r3, [r7, #14]
	movs	r3, #1
	strb	r3, [r7, #15]
	add	r3, r7, #12
	mov	r0, r3
	bl	NVIC_Init
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_BSP_EnableInterrupt, .-USB_OTG_BSP_EnableInterrupt
	.section	.text.USB_OTG_BSP_uDelay,"ax",%progbits
	.align	1
	.global	USB_OTG_BSP_uDelay
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_BSP_uDelay, %function
USB_OTG_BSP_uDelay:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #4
	subs	r3, r3, r2
	lsls	r3, r3, #3
	mov	r2, r3
	ldr	r3, .L13
	umull	r1, r3, r3, r2
	subs	r2, r2, r3
	lsrs	r2, r2, #1
	add	r3, r3, r2
	lsrs	r3, r3, #2
	str	r3, [r7, #8]
.L10:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L12
	b	.L10
.L12:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L14:
	.align	2
.L13:
	.word	613566757
	.size	USB_OTG_BSP_uDelay, .-USB_OTG_BSP_uDelay
	.section	.text.USB_OTG_BSP_mDelay,"ax",%progbits
	.align	1
	.global	USB_OTG_BSP_mDelay
	.syntax unified
	.thumb
	.thumb_func
	.type	USB_OTG_BSP_mDelay, %function
USB_OTG_BSP_mDelay:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r2, #1000
	mul	r3, r2, r3
	mov	r0, r3
	bl	USB_OTG_BSP_uDelay
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_OTG_BSP_mDelay, .-USB_OTG_BSP_mDelay
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
