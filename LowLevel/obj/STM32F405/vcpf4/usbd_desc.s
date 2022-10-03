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
	.file	"usbd_desc.c"
	.text
	.global	USR_desc
	.section	.data.USR_desc,"aw"
	.align	2
	.type	USR_desc, %object
	.size	USR_desc, 28
USR_desc:
	.word	USBD_USR_DeviceDescriptor
	.word	USBD_USR_LangIDStrDescriptor
	.word	USBD_USR_ManufacturerStrDescriptor
	.word	USBD_USR_ProductStrDescriptor
	.word	USBD_USR_SerialStrDescriptor
	.word	USBD_USR_ConfigStrDescriptor
	.word	USBD_USR_InterfaceStrDescriptor
	.global	USBD_DeviceDesc
	.section	.data.USBD_DeviceDesc,"aw"
	.align	2
	.type	USBD_DeviceDesc, %object
	.size	USBD_DeviceDesc, 18
USBD_DeviceDesc:
	.ascii	"\022\001\000\002\002\002\000@\203\004@W\000\002\001"
	.ascii	"\002\003\001"
	.global	USBD_DeviceQualifierDesc
	.section	.data.USBD_DeviceQualifierDesc,"aw"
	.align	2
	.type	USBD_DeviceQualifierDesc, %object
	.size	USBD_DeviceQualifierDesc, 10
USBD_DeviceQualifierDesc:
	.ascii	"\012\006\000\002\000\000\000@\001\000"
	.global	USBD_LangIDDesc
	.section	.data.USBD_LangIDDesc,"aw"
	.align	2
	.type	USBD_LangIDDesc, %object
	.size	USBD_LangIDDesc, 4
USBD_LangIDDesc:
	.ascii	"\004\003\011\004"
	.section	.text.USBD_USR_DeviceDescriptor,"ax",%progbits
	.align	1
	.global	USBD_USR_DeviceDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_DeviceDescriptor, %function
USBD_USR_DeviceDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, [r7]
	movs	r2, #18
	strh	r2, [r3]	@ movhi
	ldr	r3, .L3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	USBD_DeviceDesc
	.size	USBD_USR_DeviceDescriptor, .-USBD_USR_DeviceDescriptor
	.section	.text.USBD_USR_LangIDStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_USR_LangIDStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_LangIDStrDescriptor, %function
USBD_USR_LangIDStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, [r7]
	movs	r2, #4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L7
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	USBD_LangIDDesc
	.size	USBD_USR_LangIDStrDescriptor, .-USBD_USR_LangIDStrDescriptor
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Hackflight STM32F405\000"
	.section	.text.USBD_USR_ProductStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_USR_ProductStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_ProductStrDescriptor, %function
USBD_USR_ProductStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	ldr	r2, [r7]
	ldr	r1, .L13
	ldr	r0, .L13+4
	bl	USBD_GetString
	b	.L11
.L10:
	ldr	r2, [r7]
	ldr	r1, .L13
	ldr	r0, .L13+4
	bl	USBD_GetString
.L11:
	ldr	r3, .L13
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	USBD_StrDesc
	.word	.LC0
	.size	USBD_USR_ProductStrDescriptor, .-USBD_USR_ProductStrDescriptor
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Hackflight\000"
	.section	.text.USBD_USR_ManufacturerStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_USR_ManufacturerStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_ManufacturerStrDescriptor, %function
USBD_USR_ManufacturerStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r2, [r7]
	ldr	r1, .L17
	ldr	r0, .L17+4
	bl	USBD_GetString
	ldr	r3, .L17
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	USBD_StrDesc
	.word	.LC1
	.size	USBD_USR_ManufacturerStrDescriptor, .-USBD_USR_ManufacturerStrDescriptor
	.section	.rodata
	.align	2
.LC2:
	.ascii	"0x8000000\000"
	.section	.text.USBD_USR_SerialStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_USR_SerialStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_SerialStrDescriptor, %function
USBD_USR_SerialStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L20
	ldr	r2, [r7]
	ldr	r1, .L23
	ldr	r0, .L23+4
	bl	USBD_GetString
	b	.L21
.L20:
	ldr	r2, [r7]
	ldr	r1, .L23
	ldr	r0, .L23+4
	bl	USBD_GetString
.L21:
	ldr	r3, .L23
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	USBD_StrDesc
	.word	.LC2
	.size	USBD_USR_SerialStrDescriptor, .-USBD_USR_SerialStrDescriptor
	.section	.rodata
	.align	2
.LC3:
	.ascii	"VCP Config\000"
	.section	.text.USBD_USR_ConfigStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_USR_ConfigStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_ConfigStrDescriptor, %function
USBD_USR_ConfigStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L26
	ldr	r2, [r7]
	ldr	r1, .L29
	ldr	r0, .L29+4
	bl	USBD_GetString
	b	.L27
.L26:
	ldr	r2, [r7]
	ldr	r1, .L29
	ldr	r0, .L29+4
	bl	USBD_GetString
.L27:
	ldr	r3, .L29
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	USBD_StrDesc
	.word	.LC3
	.size	USBD_USR_ConfigStrDescriptor, .-USBD_USR_ConfigStrDescriptor
	.section	.rodata
	.align	2
.LC4:
	.ascii	"VCP Interface\000"
	.section	.text.USBD_USR_InterfaceStrDescriptor,"ax",%progbits
	.align	1
	.global	USBD_USR_InterfaceStrDescriptor
	.syntax unified
	.thumb
	.thumb_func
	.type	USBD_USR_InterfaceStrDescriptor, %function
USBD_USR_InterfaceStrDescriptor:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L32
	ldr	r2, [r7]
	ldr	r1, .L35
	ldr	r0, .L35+4
	bl	USBD_GetString
	b	.L33
.L32:
	ldr	r2, [r7]
	ldr	r1, .L35
	ldr	r0, .L35+4
	bl	USBD_GetString
.L33:
	ldr	r3, .L35
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L36:
	.align	2
.L35:
	.word	USBD_StrDesc
	.word	.LC4
	.size	USBD_USR_InterfaceStrDescriptor, .-USBD_USR_InterfaceStrDescriptor
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
