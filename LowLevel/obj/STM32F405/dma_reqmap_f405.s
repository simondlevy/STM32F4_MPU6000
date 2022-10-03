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
	.file	"dma_reqmap_f405.c"
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
	.section	.rodata.dmaPeripheralMapping,"a"
	.align	2
	.type	dmaPeripheralMapping, %object
	.size	dmaPeripheralMapping, 588
dmaPeripheralMapping:
	.byte	0
	.byte	0
	.space	2
	.short	8963
	.space	2
	.word	1073898584
	.word	100663296
	.short	9475
	.space	2
	.word	1073898632
	.word	100663296
	.byte	1
	.byte	0
	.space	2
	.short	8195
	.space	2
	.word	1073898512
	.word	100663296
	.short	8707
	.space	2
	.word	1073898560
	.word	100663296
	.byte	0
	.byte	1
	.space	2
	.short	5120
	.space	2
	.word	1073897584
	.word	0
	.space	12
	.byte	1
	.byte	1
	.space	2
	.short	4864
	.space	2
	.word	1073897560
	.word	0
	.space	12
	.byte	0
	.byte	2
	.space	2
	.short	5376
	.space	2
	.word	1073897608
	.word	0
	.short	5888
	.space	2
	.word	1073897656
	.word	0
	.byte	1
	.byte	2
	.space	2
	.short	4096
	.space	2
	.word	1073897488
	.word	0
	.short	4608
	.space	2
	.word	1073897536
	.word	0
	.byte	2
	.byte	0
	.space	2
	.short	8192
	.space	2
	.word	1073898512
	.word	0
	.short	9216
	.space	2
	.word	1073898608
	.word	0
	.byte	2
	.byte	1
	.space	2
	.short	8705
	.space	2
	.word	1073898560
	.word	33554432
	.short	8961
	.space	2
	.word	1073898584
	.word	33554432
	.byte	2
	.byte	2
	.space	2
	.short	8194
	.space	2
	.word	1073898512
	.word	67108864
	.short	8450
	.space	2
	.word	1073898536
	.word	67108864
	.byte	4
	.byte	0
	.space	2
	.short	9988
	.space	2
	.word	1073898680
	.word	134217728
	.space	12
	.byte	5
	.byte	0
	.space	2
	.short	9476
	.space	2
	.word	1073898632
	.word	134217728
	.short	8708
	.space	2
	.word	1073898560
	.word	134217728
	.byte	4
	.byte	1
	.space	2
	.short	5636
	.space	2
	.word	1073897632
	.word	134217728
	.space	12
	.byte	5
	.byte	1
	.space	2
	.short	5380
	.space	2
	.word	1073897608
	.word	134217728
	.space	12
	.byte	4
	.byte	2
	.space	2
	.short	4868
	.space	2
	.word	1073897560
	.word	134217728
	.space	12
	.byte	5
	.byte	2
	.space	2
	.short	4356
	.space	2
	.word	1073897512
	.word	134217728
	.space	12
	.byte	4
	.byte	3
	.space	2
	.short	5124
	.space	2
	.word	1073897584
	.word	134217728
	.space	12
	.byte	5
	.byte	3
	.space	2
	.short	4612
	.space	2
	.word	1073897536
	.word	134217728
	.space	12
	.byte	4
	.byte	4
	.space	2
	.short	5892
	.space	2
	.word	1073897656
	.word	134217728
	.space	12
	.byte	5
	.byte	4
	.space	2
	.short	4100
	.space	2
	.word	1073897488
	.word	134217728
	.space	12
	.byte	4
	.byte	5
	.space	2
	.short	9733
	.space	2
	.word	1073898656
	.word	167772160
	.short	9989
	.space	2
	.word	1073898680
	.word	167772160
	.byte	5
	.byte	5
	.space	2
	.short	8453
	.space	2
	.word	1073898536
	.word	167772160
	.short	8709
	.space	2
	.word	1073898560
	.word	167772160
	.section	.rodata.dmaTimerMapping,"a"
	.align	2
	.type	dmaTimerMapping, %object
	.size	dmaTimerMapping, 1012
dmaTimerMapping:
	.word	1073807360
	.byte	0
	.space	3
	.short	9728
	.space	2
	.word	1073898656
	.word	0
	.short	8454
	.space	2
	.word	1073898536
	.word	201326592
	.short	8966
	.space	2
	.word	1073898584
	.word	201326592
	.word	1073807360
	.byte	4
	.space	3
	.short	9728
	.space	2
	.word	1073898656
	.word	0
	.short	8710
	.space	2
	.word	1073898560
	.word	201326592
	.space	12
	.word	1073807360
	.byte	8
	.space	3
	.short	9728
	.space	2
	.word	1073898656
	.word	0
	.short	9734
	.space	2
	.word	1073898656
	.word	201326592
	.space	12
	.word	1073807360
	.byte	12
	.space	3
	.short	9222
	.space	2
	.word	1073898608
	.word	201326592
	.space	24
	.word	1073741824
	.byte	0
	.space	3
	.short	5379
	.space	2
	.word	1073897608
	.word	100663296
	.space	24
	.word	1073741824
	.byte	4
	.space	3
	.short	5635
	.space	2
	.word	1073897632
	.word	100663296
	.space	24
	.word	1073741824
	.byte	8
	.space	3
	.short	4355
	.space	2
	.word	1073897512
	.word	100663296
	.space	24
	.word	1073741824
	.byte	12
	.space	3
	.short	5891
	.space	2
	.word	1073897656
	.word	100663296
	.short	5635
	.space	2
	.word	1073897632
	.word	100663296
	.space	12
	.word	1073742848
	.byte	0
	.space	3
	.short	5125
	.space	2
	.word	1073897584
	.word	167772160
	.space	24
	.word	1073742848
	.byte	4
	.space	3
	.short	5381
	.space	2
	.word	1073897608
	.word	167772160
	.space	24
	.word	1073742848
	.byte	8
	.space	3
	.short	5893
	.space	2
	.word	1073897656
	.word	167772160
	.space	24
	.word	1073742848
	.byte	12
	.space	3
	.short	4613
	.space	2
	.word	1073897536
	.word	167772160
	.space	24
	.word	1073743872
	.byte	0
	.space	3
	.short	4098
	.space	2
	.word	1073897488
	.word	67108864
	.space	24
	.word	1073743872
	.byte	4
	.space	3
	.short	4866
	.space	2
	.word	1073897560
	.word	67108864
	.space	24
	.word	1073743872
	.byte	8
	.space	3
	.short	5890
	.space	2
	.word	1073897656
	.word	67108864
	.space	24
	.word	1073744896
	.byte	0
	.space	3
	.short	4614
	.space	2
	.word	1073897536
	.word	201326592
	.space	24
	.word	1073744896
	.byte	4
	.space	3
	.short	5126
	.space	2
	.word	1073897584
	.word	201326592
	.space	24
	.word	1073744896
	.byte	8
	.space	3
	.short	4102
	.space	2
	.word	1073897488
	.word	201326592
	.space	24
	.word	1073744896
	.byte	12
	.space	3
	.short	4358
	.space	2
	.word	1073897512
	.word	201326592
	.short	4870
	.space	2
	.word	1073897560
	.word	201326592
	.space	12
	.word	1073808384
	.byte	0
	.space	3
	.short	8704
	.space	2
	.word	1073898560
	.word	0
	.short	8711
	.space	2
	.word	1073898560
	.word	234881024
	.space	12
	.word	1073808384
	.byte	4
	.space	3
	.short	8704
	.space	2
	.word	1073898560
	.word	0
	.short	8967
	.space	2
	.word	1073898584
	.word	234881024
	.space	12
	.word	1073808384
	.byte	8
	.space	3
	.short	8704
	.space	2
	.word	1073898560
	.word	0
	.short	9223
	.space	2
	.word	1073898608
	.word	234881024
	.space	12
	.word	1073808384
	.byte	12
	.space	3
	.short	9991
	.space	2
	.word	1073898680
	.word	234881024
	.space	24
	.section	.text.dmaGetChannelSpecByPeripheral,"ax",%progbits
	.align	1
	.global	dmaGetChannelSpecByPeripheral
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaGetChannelSpecByPeripheral, %function
dmaGetChannelSpecByPeripheral:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldrsb	r3, [r7, #5]
	cmp	r3, #0
	blt	.L2
	ldrsb	r3, [r7, #5]
	cmp	r3, #1
	ble	.L3
.L2:
	movs	r3, #0
	b	.L4
.L3:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L5
.L7:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L8
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L6
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	ldrb	r2, [r7, #6]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L6
	ldrsb	r2, [r7, #5]
	ldr	r1, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L6
	ldrsb	r2, [r7, #5]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #4
	b	.L4
.L6:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L5:
	ldr	r3, [r7, #12]
	cmp	r3, #20
	bls	.L7
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	dmaPeripheralMapping
	.size	dmaGetChannelSpecByPeripheral, .-dmaGetChannelSpecByPeripheral
	.section	.text.dmaGetChannelSpecByTimerValue,"ax",%progbits
	.align	1
	.global	dmaGetChannelSpecByTimerValue
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaGetChannelSpecByTimerValue, %function
dmaGetChannelSpecByTimerValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2
	strb	r3, [r7, #2]
	ldrsb	r3, [r7, #2]
	cmp	r3, #0
	blt	.L11
	ldrsb	r3, [r7, #2]
	cmp	r3, #2
	ble	.L12
.L11:
	movs	r3, #0
	b	.L13
.L12:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L14
.L16:
	ldr	r3, [r7, #12]
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, .L17
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L15
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L15
	ldrsb	r2, [r7, #2]
	ldr	r1, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L15
	ldrsb	r2, [r7, #2]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #8
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	b	.L13
.L15:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L14:
	ldr	r3, [r7, #12]
	cmp	r3, #22
	bls	.L16
	movs	r3, #0
.L13:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	dmaTimerMapping
	.size	dmaGetChannelSpecByTimerValue, .-dmaGetChannelSpecByTimerValue
	.section	.text.dmaGetChannelSpecByTimer,"ax",%progbits
	.align	1
	.global	dmaGetChannelSpecByTimer
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaGetChannelSpecByTimer, %function
dmaGetChannelSpecByTimer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L20
	movs	r3, #0
	b	.L21
.L20:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	bl	dmaoptByTag
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	ldrsb	r2, [r7, #15]
	mov	r1, r3
	bl	dmaGetChannelSpecByTimerValue
	mov	r3, r0
.L21:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	dmaGetChannelSpecByTimer, .-dmaGetChannelSpecByTimer
	.section	.text.dmaGetOptionByTimer,"ax",%progbits
	.align	1
	.global	dmaGetOptionByTimer
	.syntax unified
	.thumb
	.thumb_func
	.type	dmaGetOptionByTimer, %function
dmaGetOptionByTimer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L23
.L29:
	ldr	r3, [r7, #20]
	movs	r2, #44
	mul	r3, r2, r3
	ldr	r2, .L30
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L24
	ldr	r3, [r7, #12]
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L24
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L25
.L28:
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #8
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bne	.L26
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bne	.L26
	ldr	r3, [r7, #16]
	sxtb	r3, r3
	b	.L27
.L26:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L25:
	ldr	r3, [r7, #16]
	cmp	r3, #2
	bls	.L28
.L24:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L23:
	ldr	r3, [r7, #20]
	cmp	r3, #22
	bls	.L29
	mov	r3, #-1
.L27:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L31:
	.align	2
.L30:
	.word	dmaTimerMapping
	.size	dmaGetOptionByTimer, .-dmaGetOptionByTimer
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
