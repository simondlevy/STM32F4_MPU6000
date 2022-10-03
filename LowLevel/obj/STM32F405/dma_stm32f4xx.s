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
	.file	"dma_stm32f4xx.c"
	.text
	.global	dmaDescriptors
	.section	.data.dmaDescriptors,"aw"
	.align	2
	.type	dmaDescriptors, %object
	.size	dmaDescriptors, 576
dmaDescriptors:
	.word	1073897472
	.word	1073897488
	.byte	0
	.space	7
	.word	0
	.byte	0
	.byte	11
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073897472
	.word	1073897512
	.byte	1
	.space	7
	.word	0
	.byte	6
	.byte	12
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073897472
	.word	1073897536
	.byte	2
	.space	7
	.word	0
	.byte	16
	.byte	13
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073897472
	.word	1073897560
	.byte	3
	.space	7
	.word	0
	.byte	22
	.byte	14
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073897472
	.word	1073897584
	.byte	4
	.space	7
	.word	0
	.byte	32
	.byte	15
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073897472
	.word	1073897608
	.byte	5
	.space	7
	.word	0
	.byte	38
	.byte	16
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073897472
	.word	1073897632
	.byte	6
	.space	7
	.word	0
	.byte	48
	.byte	17
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073897472
	.word	1073897656
	.byte	7
	.space	7
	.word	0
	.byte	54
	.byte	47
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073898496
	.word	1073898512
	.byte	0
	.space	7
	.word	0
	.byte	0
	.byte	56
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073898496
	.word	1073898536
	.byte	1
	.space	7
	.word	0
	.byte	6
	.byte	57
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073898496
	.word	1073898560
	.byte	2
	.space	7
	.word	0
	.byte	16
	.byte	58
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073898496
	.word	1073898584
	.byte	3
	.space	7
	.word	0
	.byte	22
	.byte	59
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073898496
	.word	1073898608
	.byte	4
	.space	7
	.word	0
	.byte	32
	.byte	60
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073898496
	.word	1073898632
	.byte	5
	.space	7
	.word	0
	.byte	38
	.byte	68
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073898496
	.word	1073898656
	.byte	6
	.space	7
	.word	0
	.byte	48
	.byte	69
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.word	1073898496
	.word	1073898680
	.byte	7
	.space	7
	.word	0
	.byte	54
	.byte	70
	.space	2
	.word	0
	.byte	0
	.byte	0
	.space	6
	.section	.text.DMA1_Stream0_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA1_Stream0_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA1_Stream0_IRQHandler, %function
DMA1_Stream0_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #0
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L4
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L3
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L4
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L3:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	dmaDescriptors
	.size	DMA1_Stream0_IRQHandler, .-DMA1_Stream0_IRQHandler
	.section	.text.DMA1_Stream1_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA1_Stream1_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA1_Stream1_IRQHandler, %function
DMA1_Stream1_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #1
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L9
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L8
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L9
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L8:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	dmaDescriptors
	.size	DMA1_Stream1_IRQHandler, .-DMA1_Stream1_IRQHandler
	.section	.text.DMA1_Stream2_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA1_Stream2_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA1_Stream2_IRQHandler, %function
DMA1_Stream2_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #2
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L14
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L13
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L14
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L13:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	dmaDescriptors
	.size	DMA1_Stream2_IRQHandler, .-DMA1_Stream2_IRQHandler
	.section	.text.DMA1_Stream3_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA1_Stream3_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA1_Stream3_IRQHandler, %function
DMA1_Stream3_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #3
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L19
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L18
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L19
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L18:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	dmaDescriptors
	.size	DMA1_Stream3_IRQHandler, .-DMA1_Stream3_IRQHandler
	.section	.text.DMA1_Stream4_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA1_Stream4_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA1_Stream4_IRQHandler, %function
DMA1_Stream4_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #4
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L24
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L23
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L24
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L23:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	dmaDescriptors
	.size	DMA1_Stream4_IRQHandler, .-DMA1_Stream4_IRQHandler
	.section	.text.DMA1_Stream5_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA1_Stream5_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA1_Stream5_IRQHandler, %function
DMA1_Stream5_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #5
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L29
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L28
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L29
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L28:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	dmaDescriptors
	.size	DMA1_Stream5_IRQHandler, .-DMA1_Stream5_IRQHandler
	.section	.text.DMA1_Stream6_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA1_Stream6_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA1_Stream6_IRQHandler, %function
DMA1_Stream6_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #6
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L34
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L33
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L34
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L33:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L35:
	.align	2
.L34:
	.word	dmaDescriptors
	.size	DMA1_Stream6_IRQHandler, .-DMA1_Stream6_IRQHandler
	.section	.text.DMA1_Stream7_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA1_Stream7_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA1_Stream7_IRQHandler, %function
DMA1_Stream7_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #7
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L39
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L38
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L39
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L38:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L40:
	.align	2
.L39:
	.word	dmaDescriptors
	.size	DMA1_Stream7_IRQHandler, .-DMA1_Stream7_IRQHandler
	.section	.text.DMA2_Stream0_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream0_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream0_IRQHandler, %function
DMA2_Stream0_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #8
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L44
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L43
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L44
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L43:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	dmaDescriptors
	.size	DMA2_Stream0_IRQHandler, .-DMA2_Stream0_IRQHandler
	.section	.text.DMA2_Stream1_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream1_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream1_IRQHandler, %function
DMA2_Stream1_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #9
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L49
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L48
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L49
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L48:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L50:
	.align	2
.L49:
	.word	dmaDescriptors
	.size	DMA2_Stream1_IRQHandler, .-DMA2_Stream1_IRQHandler
	.section	.text.DMA2_Stream2_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream2_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream2_IRQHandler, %function
DMA2_Stream2_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #10
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L54
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L53
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L54
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L53:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L55:
	.align	2
.L54:
	.word	dmaDescriptors
	.size	DMA2_Stream2_IRQHandler, .-DMA2_Stream2_IRQHandler
	.section	.text.DMA2_Stream3_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream3_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream3_IRQHandler, %function
DMA2_Stream3_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #11
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L59
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L58
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L59
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L58:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L60:
	.align	2
.L59:
	.word	dmaDescriptors
	.size	DMA2_Stream3_IRQHandler, .-DMA2_Stream3_IRQHandler
	.section	.text.DMA2_Stream4_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream4_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream4_IRQHandler, %function
DMA2_Stream4_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #12
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L64
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L63
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L64
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L63:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L65:
	.align	2
.L64:
	.word	dmaDescriptors
	.size	DMA2_Stream4_IRQHandler, .-DMA2_Stream4_IRQHandler
	.section	.text.DMA2_Stream5_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream5_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream5_IRQHandler, %function
DMA2_Stream5_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #13
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L69
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L68
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L69
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L68:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L70:
	.align	2
.L69:
	.word	dmaDescriptors
	.size	DMA2_Stream5_IRQHandler, .-DMA2_Stream5_IRQHandler
	.section	.text.DMA2_Stream6_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream6_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream6_IRQHandler, %function
DMA2_Stream6_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #14
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L74
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L73
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L74
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L73:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L75:
	.align	2
.L74:
	.word	dmaDescriptors
	.size	DMA2_Stream6_IRQHandler, .-DMA2_Stream6_IRQHandler
	.section	.text.DMA2_Stream7_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream7_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	DMA2_Stream7_IRQHandler, %function
DMA2_Stream7_IRQHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #15
	strb	r3, [r7, #7]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	ldr	r1, .L79
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L78
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L79
	add	r2, r2, r3
	ldr	r3, [r7]
	mov	r0, r2
	blx	r3
.L78:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L80:
	.align	2
.L79:
	.word	dmaDescriptors
	.size	DMA2_Stream7_IRQHandler, .-DMA2_Stream7_IRQHandler
	.section	.text.dmaEnable,"ax",%progbits
	.align	1
	.global	dmaEnable
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaEnable, %function
dmaEnable:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r1, .L84
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r2, .L84+4
	cmp	r3, r2
	bne	.L82
	mov	r3, #2097152
	b	.L83
.L82:
	mov	r3, #4194304
.L83:
	movs	r1, #1
	mov	r0, r3
	bl	RCC_AHB1PeriphClockCmd
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L85:
	.align	2
.L84:
	.word	dmaDescriptors
	.word	1073897472
	.size	dmaEnable, .-dmaEnable
	.section	.text.dmaFlag_IT_TCIF,"ax",%progbits
	.align	1
	.global	dmaFlag_IT_TCIF
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaFlag_IT_TCIF, %function
dmaFlag_IT_TCIF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L104
	cmp	r3, r2
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r2, .L104+4
	cmp	r3, r2
	bne	.L88
.L87:
	ldr	r3, .L104+8
	b	.L89
.L88:
	ldr	r3, [r7, #4]
	ldr	r2, .L104+12
	cmp	r3, r2
	beq	.L90
	ldr	r3, [r7, #4]
	ldr	r2, .L104+16
	cmp	r3, r2
	bne	.L91
.L90:
	ldr	r3, .L104+20
	b	.L89
.L91:
	ldr	r3, [r7, #4]
	ldr	r2, .L104+24
	cmp	r3, r2
	beq	.L92
	ldr	r3, [r7, #4]
	ldr	r2, .L104+28
	cmp	r3, r2
	bne	.L93
.L92:
	ldr	r3, .L104+32
	b	.L89
.L93:
	ldr	r3, [r7, #4]
	ldr	r2, .L104+36
	cmp	r3, r2
	beq	.L94
	ldr	r3, [r7, #4]
	ldr	r2, .L104+40
	cmp	r3, r2
	bne	.L95
.L94:
	ldr	r3, .L104+44
	b	.L89
.L95:
	ldr	r3, [r7, #4]
	ldr	r2, .L104+48
	cmp	r3, r2
	beq	.L96
	ldr	r3, [r7, #4]
	ldr	r2, .L104+52
	cmp	r3, r2
	bne	.L97
.L96:
	ldr	r3, .L104+56
	b	.L89
.L97:
	ldr	r3, [r7, #4]
	ldr	r2, .L104+60
	cmp	r3, r2
	beq	.L98
	ldr	r3, [r7, #4]
	ldr	r2, .L104+64
	cmp	r3, r2
	bne	.L99
.L98:
	ldr	r3, .L104+68
	b	.L89
.L99:
	ldr	r3, [r7, #4]
	ldr	r2, .L104+72
	cmp	r3, r2
	beq	.L100
	ldr	r3, [r7, #4]
	ldr	r2, .L104+76
	cmp	r3, r2
	bne	.L101
.L100:
	ldr	r3, .L104+80
	b	.L89
.L101:
	ldr	r3, [r7, #4]
	ldr	r2, .L104+84
	cmp	r3, r2
	beq	.L102
	ldr	r3, [r7, #4]
	ldr	r2, .L104+88
	cmp	r3, r2
	bne	.L103
.L102:
	ldr	r3, .L104+92
	b	.L89
.L103:
	movs	r3, #0
.L89:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L105:
	.align	2
.L104:
	.word	1073897488
	.word	1073898512
	.word	268468256
	.word	1073897512
	.word	1073898536
	.word	268470272
	.word	1073897536
	.word	1073898560
	.word	270565376
	.word	1073897560
	.word	1073898584
	.word	402685952
	.word	1073897584
	.word	1073898608
	.word	536903712
	.word	1073897608
	.word	1073898632
	.word	536905728
	.word	1073897632
	.word	1073898656
	.word	539000832
	.word	1073897656
	.word	1073898680
	.word	671121408
	.size	dmaFlag_IT_TCIF, .-dmaFlag_IT_TCIF
	.section	.text.dmaSetHandler,"ax",%progbits
	.align	1
	.global	dmaSetHandler
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaSetHandler, %function
dmaSetHandler:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r1, .L109
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r2, .L109+4
	cmp	r3, r2
	bne	.L107
	mov	r3, #2097152
	b	.L108
.L107:
	mov	r3, #4194304
.L108:
	movs	r1, #1
	mov	r0, r3
	bl	RCC_AHB1PeriphClockCmd
	ldr	r1, .L109
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r1, .L109
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #24
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r1, .L109
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	dmaFlag_IT_TCIF
	mov	r1, r0
	ldr	r0, .L109
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	adds	r3, r3, #32
	str	r1, [r3]
	ldr	r1, .L109
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #21
	ldrsb	r3, [r3]
	uxtb	r3, r3
	strb	r3, [r7, #16]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #6
	uxtb	r3, r3
	strb	r3, [r7, #17]
	movs	r3, #0
	strb	r3, [r7, #18]
	movs	r3, #1
	strb	r3, [r7, #19]
	add	r3, r7, #16
	mov	r0, r3
	bl	NVIC_Init
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L110:
	.align	2
.L109:
	.word	dmaDescriptors
	.word	1073897472
	.size	dmaSetHandler, .-dmaSetHandler
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
