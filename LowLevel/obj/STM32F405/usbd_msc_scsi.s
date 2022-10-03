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
	.file	"usbd_msc_scsi.c"
	.text
	.global	SCSI_Sense
	.section	.bss.SCSI_Sense,"aw",%nobits
	.align	2
	.type	SCSI_Sense, %object
	.size	SCSI_Sense, 32
SCSI_Sense:
	.space	32
	.global	SCSI_Sense_Head
	.section	.bss.SCSI_Sense_Head,"aw",%nobits
	.type	SCSI_Sense_Head, %object
	.size	SCSI_Sense_Head, 1
SCSI_Sense_Head:
	.space	1
	.global	SCSI_Sense_Tail
	.section	.bss.SCSI_Sense_Tail,"aw",%nobits
	.type	SCSI_Sense_Tail, %object
	.size	SCSI_Sense_Tail, 1
SCSI_Sense_Tail:
	.space	1
	.global	SCSI_blk_size
	.section	.bss.SCSI_blk_size,"aw",%nobits
	.align	2
	.type	SCSI_blk_size, %object
	.size	SCSI_blk_size, 4
SCSI_blk_size:
	.space	4
	.global	SCSI_blk_nbr
	.section	.bss.SCSI_blk_nbr,"aw",%nobits
	.align	2
	.type	SCSI_blk_nbr, %object
	.size	SCSI_blk_nbr, 4
SCSI_blk_nbr:
	.space	4
	.global	SCSI_blk_addr
	.section	.bss.SCSI_blk_addr,"aw",%nobits
	.align	2
	.type	SCSI_blk_addr, %object
	.size	SCSI_blk_addr, 4
SCSI_blk_addr:
	.space	4
	.global	SCSI_blk_len
	.section	.bss.SCSI_blk_len,"aw",%nobits
	.align	2
	.type	SCSI_blk_len, %object
	.size	SCSI_blk_len, 4
SCSI_blk_len:
	.space	4
	.global	cdev
	.section	.bss.cdev,"aw",%nobits
	.align	2
	.type	cdev, %object
	.size	cdev, 4
cdev:
	.space	4
	.section	.text.SCSI_ProcessCmd,"ax",%progbits
	.align	1
	.global	SCSI_ProcessCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_ProcessCmd, %function
SCSI_ProcessCmd:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r2, .L17
	ldr	r3, [r7, #12]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #90
	bhi	.L2
	adr	r2, .L4
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L4:
	.word	.L15+1
	.word	.L2+1
	.word	.L2+1
	.word	.L14+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L13+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L12+1
	.word	.L11+1
	.word	.L2+1
	.word	.L2+1
	.word	.L10+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L9+1
	.word	.L2+1
	.word	.L8+1
	.word	.L2+1
	.word	.L2+1
	.word	.L7+1
	.word	.L2+1
	.word	.L6+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L5+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L2+1
	.word	.L3+1
	.p2align 1
.L15:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_TestUnitReady
	mov	r3, r0
	b	.L16
.L14:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_RequestSense
	mov	r3, r0
	b	.L16
.L13:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_Inquiry
	mov	r3, r0
	b	.L16
.L11:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_StartStopUnit
	mov	r3, r0
	b	.L16
.L10:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_StartStopUnit
	mov	r3, r0
	b	.L16
.L12:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_ModeSense6
	mov	r3, r0
	b	.L16
.L3:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_ModeSense10
	mov	r3, r0
	b	.L16
.L9:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_ReadFormatCapacity
	mov	r3, r0
	b	.L16
.L8:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_ReadCapacity10
	mov	r3, r0
	b	.L16
.L7:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_Read10
	mov	r3, r0
	b	.L16
.L6:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_Write10
	mov	r3, r0
	b	.L16
.L5:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	SCSI_Verify10
	mov	r3, r0
	b	.L16
.L2:
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	movs	r2, #32
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
.L16:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	cdev
	.size	SCSI_ProcessCmd, .-SCSI_ProcessCmd
	.section	.text.SCSI_TestUnitReady,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_TestUnitReady, %function
SCSI_TestUnitReady:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, .L23
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L20
	ldr	r3, .L23
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	movs	r2, #32
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L21
.L20:
	ldr	r3, .L23+4
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L22
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #58
	movs	r1, #2
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L21
.L22:
	ldr	r3, .L23+8
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L21:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	MSC_BOT_cbw
	.word	USBD_STORAGE_fops
	.word	MSC_BOT_DataLen
	.size	SCSI_TestUnitReady, .-SCSI_TestUnitReady
	.section	.text.SCSI_Inquiry,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_Inquiry, %function
SCSI_Inquiry:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L26
	ldr	r3, .L31
	str	r3, [r7, #12]
	movs	r3, #7
	strh	r3, [r7, #10]	@ movhi
	b	.L27
.L26:
	ldr	r3, .L31+4
	ldr	r3, [r3]
	ldr	r1, [r3, #28]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	adds	r3, r3, #5
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	ldrh	r2, [r7, #10]
	cmp	r2, r3
	bcc	.L27
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	strh	r3, [r7, #10]	@ movhi
.L27:
	ldr	r2, .L31+8
	ldrh	r3, [r7, #10]	@ movhi
	strh	r3, [r2]	@ movhi
	b	.L28
.L29:
	ldrh	r3, [r7, #10]
	subs	r3, r3, #1
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldrh	r3, [r7, #10]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L31+12
	strb	r1, [r2, r3]
.L28:
	ldrh	r3, [r7, #10]
	cmp	r3, #0
	bne	.L29
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L32:
	.align	2
.L31:
	.word	MSC_Page00_Inquiry_Data
	.word	USBD_STORAGE_fops
	.word	MSC_BOT_DataLen
	.word	MSC_BOT_Data
	.size	SCSI_Inquiry, .-SCSI_Inquiry
	.section	.text.SCSI_ReadCapacity10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_ReadCapacity10, %function
SCSI_ReadCapacity10:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, .L36
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	ldr	r2, .L36+4
	ldr	r1, .L36+8
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L34
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #58
	movs	r1, #2
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L35
.L34:
	ldr	r3, .L36+8
	ldr	r3, [r3]
	subs	r3, r3, #1
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, .L36+12
	strb	r2, [r3]
	ldr	r3, .L36+8
	ldr	r3, [r3]
	subs	r3, r3, #1
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, .L36+12
	strb	r2, [r3, #1]
	ldr	r3, .L36+8
	ldr	r3, [r3]
	subs	r3, r3, #1
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, .L36+12
	strb	r2, [r3, #2]
	ldr	r3, .L36+8
	ldr	r3, [r3]
	uxtb	r3, r3
	subs	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L36+12
	strb	r2, [r3, #3]
	ldr	r3, .L36+4
	ldr	r3, [r3]
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, .L36+12
	strb	r2, [r3, #4]
	ldr	r3, .L36+4
	ldr	r3, [r3]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, .L36+12
	strb	r2, [r3, #5]
	ldr	r3, .L36+4
	ldr	r3, [r3]
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, .L36+12
	strb	r2, [r3, #6]
	ldr	r3, .L36+4
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, .L36+12
	strb	r2, [r3, #7]
	ldr	r3, .L36+16
	movs	r2, #8
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L35:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L37:
	.align	2
.L36:
	.word	USBD_STORAGE_fops
	.word	SCSI_blk_size
	.word	SCSI_blk_nbr
	.word	MSC_BOT_Data
	.word	MSC_BOT_DataLen
	.size	SCSI_ReadCapacity10, .-SCSI_ReadCapacity10
	.section	.text.SCSI_ReadFormatCapacity,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_ReadFormatCapacity, %function
SCSI_ReadFormatCapacity:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	b	.L39
.L40:
	ldrh	r3, [r7, #22]
	ldr	r2, .L44
	movs	r1, #0
	strb	r1, [r2, r3]
	ldrh	r3, [r7, #22]
	adds	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
.L39:
	ldrh	r3, [r7, #22]
	cmp	r3, #11
	bls	.L40
	ldr	r3, .L44+4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	add	r2, r7, #16
	add	r1, r7, #12
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L41
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #58
	movs	r1, #2
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L43
.L41:
	ldr	r3, .L44
	movs	r2, #8
	strb	r2, [r3, #3]
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, .L44
	strb	r2, [r3, #4]
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, .L44
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, .L44
	strb	r2, [r3, #6]
	ldr	r3, [r7, #12]
	uxtb	r3, r3
	subs	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L44
	strb	r2, [r3, #7]
	ldr	r3, .L44
	movs	r2, #2
	strb	r2, [r3, #8]
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #16
	uxtb	r2, r3
	ldr	r3, .L44
	strb	r2, [r3, #9]
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, .L44
	strb	r2, [r3, #10]
	ldr	r3, [r7, #16]
	uxtb	r2, r3
	ldr	r3, .L44
	strb	r2, [r3, #11]
	ldr	r3, .L44+8
	movs	r2, #12
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L43:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	MSC_BOT_Data
	.word	USBD_STORAGE_fops
	.word	MSC_BOT_DataLen
	.size	SCSI_ReadFormatCapacity, .-SCSI_ReadFormatCapacity
	.section	.text.SCSI_ModeSense6,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_ModeSense6, %function
SCSI_ModeSense6:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	movs	r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldr	r2, .L51
	ldrh	r3, [r7, #14]	@ movhi
	strh	r3, [r2]	@ movhi
	b	.L47
.L48:
	ldrh	r3, [r7, #14]
	subs	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #14]
	ldr	r1, .L51+4
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	ldr	r2, .L51+8
	strb	r1, [r2, r3]
.L47:
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	bne	.L48
	ldr	r3, .L51+12
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L49
	ldr	r3, .L51+8
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	orn	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, .L51+8
	strb	r2, [r3, #2]
.L49:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L52:
	.align	2
.L51:
	.word	MSC_BOT_DataLen
	.word	MSC_Mode_Sense6_data
	.word	MSC_BOT_Data
	.word	USBD_STORAGE_fops
	.size	SCSI_ModeSense6, .-SCSI_ModeSense6
	.section	.text.SCSI_ModeSense10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_ModeSense10, %function
SCSI_ModeSense10:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	movs	r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldr	r2, .L58
	ldrh	r3, [r7, #14]	@ movhi
	strh	r3, [r2]	@ movhi
	b	.L54
.L55:
	ldrh	r3, [r7, #14]
	subs	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]
	ldrh	r3, [r7, #14]
	ldr	r1, .L58+4
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	ldr	r2, .L58+8
	strb	r1, [r2, r3]
.L54:
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	bne	.L55
	ldr	r3, .L58+12
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L56
	ldr	r3, .L58+8
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	orn	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, .L58+8
	strb	r2, [r3, #3]
.L56:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L59:
	.align	2
.L58:
	.word	MSC_BOT_DataLen
	.word	MSC_Mode_Sense10_data
	.word	MSC_BOT_Data
	.word	USBD_STORAGE_fops
	.size	SCSI_ModeSense10, .-SCSI_ModeSense10
	.section	.text.SCSI_RequestSense,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_RequestSense, %function
SCSI_RequestSense:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L61
.L62:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	ldr	r2, .L66
	movs	r1, #0
	strb	r1, [r2, r3]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #15]
.L61:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #17
	bls	.L62
	ldr	r3, .L66
	movs	r2, #112
	strb	r2, [r3]
	ldr	r3, .L66
	movs	r2, #12
	strb	r2, [r3, #7]
	ldr	r3, .L66+4
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L66+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L63
	ldr	r3, .L66+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L66+12
	ldrb	r2, [r3, r2, lsl #3]	@ zero_extendqisi2
	ldr	r3, .L66
	strb	r2, [r3, #2]
	ldr	r3, .L66+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, .L66+12
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, .L66
	strb	r2, [r3, #12]
	ldr	r3, .L66+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, .L66+12
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldr	r3, .L66
	strb	r2, [r3, #13]
	ldr	r3, .L66+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L66+4
	strb	r2, [r3]
	ldr	r3, .L66+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L63
	ldr	r3, .L66+4
	movs	r2, #0
	strb	r2, [r3]
.L63:
	ldr	r3, .L66+16
	movs	r2, #18
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #18
	bhi	.L64
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, .L66+16
	strh	r2, [r3]	@ movhi
.L64:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L67:
	.align	2
.L66:
	.word	MSC_BOT_Data
	.word	SCSI_Sense_Head
	.word	SCSI_Sense_Tail
	.word	SCSI_Sense
	.word	MSC_BOT_DataLen
	.size	SCSI_RequestSense, .-SCSI_RequestSense
	.section	.text.SCSI_SenseCode,"ax",%progbits
	.align	1
	.global	SCSI_SenseCode
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_SenseCode, %function
SCSI_SenseCode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	mov	r3, r1
	strb	r3, [r7, #6]
	mov	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, .L71
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, .L71+4
	ldrb	r3, [r7, #6]
	strb	r3, [r2, r1, lsl #3]
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	lsls	r2, r3, #8
	ldr	r3, .L71
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, .L71+4
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r1, [r3, #4]
	ldr	r3, .L71
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L71
	strb	r2, [r3]
	ldr	r3, .L71
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L70
	ldr	r3, .L71
	movs	r2, #0
	strb	r2, [r3]
.L70:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L72:
	.align	2
.L71:
	.word	SCSI_Sense_Tail
	.word	SCSI_Sense
	.size	SCSI_SenseCode, .-SCSI_SenseCode
	.section	.text.SCSI_StartStopUnit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_StartStopUnit, %function
SCSI_StartStopUnit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, .L75
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L76:
	.align	2
.L75:
	.word	MSC_BOT_DataLen
	.size	SCSI_StartStopUnit, .-SCSI_StartStopUnit
	.section	.text.SCSI_Read10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_Read10, %function
SCSI_Read10:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, .L83
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L78
	ldr	r3, .L83+4
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L79
	ldr	r3, .L83+4
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	movs	r2, #32
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L80
.L79:
	ldr	r3, .L83+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L81
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #58
	movs	r1, #2
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L80
.L81:
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7]
	adds	r2, r2, #5
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, .L83+12
	str	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7]
	adds	r2, r2, #8
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, .L83+16
	str	r2, [r3]
	ldr	r3, .L83+12
	ldr	r1, [r3]
	ldr	r3, .L83+16
	ldr	r3, [r3]
	uxth	r2, r3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	SCSI_CheckAddressRange
	mov	r3, r0
	cmp	r3, #0
	bge	.L82
	mov	r3, #-1
	b	.L80
.L82:
	ldr	r3, .L83
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, .L83+12
	ldr	r3, [r3]
	ldr	r2, .L83+20
	ldr	r2, [r2]
	mul	r3, r2, r3
	ldr	r2, .L83+12
	str	r3, [r2]
	ldr	r3, .L83+16
	ldr	r3, [r3]
	ldr	r2, .L83+20
	ldr	r2, [r2]
	mul	r3, r2, r3
	ldr	r2, .L83+16
	str	r3, [r2]
	ldr	r3, .L83+4
	ldr	r2, [r3, #8]
	ldr	r3, .L83+16
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L78
	ldr	r3, .L83+4
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	movs	r2, #32
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L80
.L78:
	ldr	r3, .L83+24
	mov	r2, #4096
	strh	r2, [r3]	@ movhi
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	SCSI_ProcessRead
	mov	r3, r0
.L80:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L84:
	.align	2
.L83:
	.word	MSC_BOT_State
	.word	MSC_BOT_cbw
	.word	USBD_STORAGE_fops
	.word	SCSI_blk_addr
	.word	SCSI_blk_len
	.word	SCSI_blk_size
	.word	MSC_BOT_DataLen
	.size	SCSI_Read10, .-SCSI_Read10
	.section	.text.SCSI_Write10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_Write10, %function
SCSI_Write10:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, .L94
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L86
	ldr	r3, .L94+4
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L87
	ldr	r3, .L94+4
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	movs	r2, #32
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L88
.L87:
	ldr	r3, .L94+8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L89
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #58
	movs	r1, #2
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L88
.L89:
	ldr	r3, .L94+8
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L90
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #39
	movs	r1, #2
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L88
.L90:
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7]
	adds	r2, r2, #5
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, .L94+12
	str	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7]
	adds	r2, r2, #8
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, .L94+16
	str	r2, [r3]
	ldr	r3, .L94+12
	ldr	r1, [r3]
	ldr	r3, .L94+16
	ldr	r3, [r3]
	uxth	r2, r3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	SCSI_CheckAddressRange
	mov	r3, r0
	cmp	r3, #0
	bge	.L91
	mov	r3, #-1
	b	.L88
.L91:
	ldr	r3, .L94+12
	ldr	r3, [r3]
	ldr	r2, .L94+20
	ldr	r2, [r2]
	mul	r3, r2, r3
	ldr	r2, .L94+12
	str	r3, [r2]
	ldr	r3, .L94+16
	ldr	r3, [r3]
	ldr	r2, .L94+20
	ldr	r2, [r2]
	mul	r3, r2, r3
	ldr	r2, .L94+16
	str	r3, [r2]
	ldr	r3, .L94+4
	ldr	r2, [r3, #8]
	ldr	r3, .L94+16
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L92
	ldr	r3, .L94+4
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	movs	r2, #32
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L88
.L92:
	ldr	r3, .L94
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, .L94+24
	ldr	r0, [r3]
	ldr	r3, .L94+16
	ldr	r3, [r3]
	cmp	r3, #4096
	it	cs
	movcs	r3, #4096
	uxth	r3, r3
	ldr	r2, .L94+28
	movs	r1, #1
	bl	DCD_EP_PrepareRx
	movs	r3, #0
	b	.L88
.L86:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	SCSI_ProcessWrite
	mov	r3, r0
.L88:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L95:
	.align	2
.L94:
	.word	MSC_BOT_State
	.word	MSC_BOT_cbw
	.word	USBD_STORAGE_fops
	.word	SCSI_blk_addr
	.word	SCSI_blk_len
	.word	SCSI_blk_size
	.word	cdev
	.word	MSC_BOT_Data
	.size	SCSI_Write10, .-SCSI_Write10
	.section	.text.SCSI_Verify10,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_Verify10, %function
SCSI_Verify10:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L97
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #36
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L98
.L97:
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r3, r3, r2
	ldr	r2, [r7]
	adds	r2, r2, #5
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, .L100
	str	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7]
	adds	r2, r2, #8
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, .L100+4
	str	r2, [r3]
	ldr	r3, .L100
	ldr	r1, [r3]
	ldr	r3, .L100+4
	ldr	r3, [r3]
	uxth	r2, r3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	SCSI_CheckAddressRange
	mov	r3, r0
	cmp	r3, #0
	bge	.L99
	mov	r3, #-1
	b	.L98
.L99:
	ldr	r3, .L100+8
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L98:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L101:
	.align	2
.L100:
	.word	SCSI_blk_addr
	.word	SCSI_blk_len
	.word	MSC_BOT_DataLen
	.size	SCSI_Verify10, .-SCSI_Verify10
	.section	.text.SCSI_CheckAddressRange,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_CheckAddressRange, %function
SCSI_CheckAddressRange:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #4]	@ movhi
	ldrh	r2, [r7, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, .L105
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L103
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #33
	movs	r1, #5
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L104
.L103:
	movs	r3, #0
.L104:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L106:
	.align	2
.L105:
	.word	SCSI_blk_nbr
	.size	SCSI_CheckAddressRange, .-SCSI_CheckAddressRange
	.section	.text.SCSI_ProcessRead,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_ProcessRead, %function
SCSI_ProcessRead:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L111
	ldr	r3, [r3]
	cmp	r3, #4096
	it	cs
	movcs	r3, #4096
	str	r3, [r7, #12]
	ldr	r3, .L111+4
	ldr	r3, [r3]
	ldr	r4, [r3, #16]
	ldr	r3, .L111+8
	ldr	r2, [r3]
	ldr	r3, .L111+12
	ldr	r3, [r3]
	udiv	r1, r2, r3
	ldr	r3, .L111+12
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	udiv	r3, r2, r3
	uxth	r3, r3
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	mov	r2, r1
	ldr	r1, .L111+16
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	bge	.L108
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #17
	movs	r1, #4
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L109
.L108:
	ldr	r3, .L111+20
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, .L111+16
	movs	r1, #129
	bl	DCD_EP_Tx
	ldr	r3, .L111+8
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldr	r2, .L111+8
	str	r3, [r2]
	ldr	r3, .L111
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, .L111
	str	r3, [r2]
	ldr	r3, .L111+24
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, .L111+24
	str	r3, [r2, #8]
	ldr	r3, .L111
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L110
	ldr	r3, .L111+28
	movs	r2, #3
	strb	r2, [r3]
.L110:
	movs	r3, #0
.L109:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L112:
	.align	2
.L111:
	.word	SCSI_blk_len
	.word	USBD_STORAGE_fops
	.word	SCSI_blk_addr
	.word	SCSI_blk_size
	.word	MSC_BOT_Data
	.word	cdev
	.word	MSC_BOT_csw
	.word	MSC_BOT_State
	.size	SCSI_ProcessRead, .-SCSI_ProcessRead
	.section	.text.SCSI_ProcessWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	SCSI_ProcessWrite, %function
SCSI_ProcessWrite:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r3, .L118
	ldr	r3, [r3]
	cmp	r3, #4096
	it	cs
	movcs	r3, #4096
	str	r3, [r7, #12]
	ldr	r3, .L118+4
	ldr	r3, [r3]
	ldr	r4, [r3, #20]
	ldr	r3, .L118+8
	ldr	r2, [r3]
	ldr	r3, .L118+12
	ldr	r3, [r3]
	udiv	r1, r2, r3
	ldr	r3, .L118+12
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	udiv	r3, r2, r3
	uxth	r3, r3
	ldrb	r0, [r7, #7]	@ zero_extendqisi2
	mov	r2, r1
	ldr	r1, .L118+16
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	bge	.L114
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	movs	r2, #3
	movs	r1, #4
	mov	r0, r3
	bl	SCSI_SenseCode
	mov	r3, #-1
	b	.L115
.L114:
	ldr	r3, .L118+8
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldr	r2, .L118+8
	str	r3, [r2]
	ldr	r3, .L118
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, .L118
	str	r3, [r2]
	ldr	r3, .L118+20
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, .L118+20
	str	r3, [r2, #8]
	ldr	r3, .L118
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L116
	ldr	r3, .L118+24
	ldr	r3, [r3]
	movs	r1, #0
	mov	r0, r3
	bl	MSC_BOT_SendCSW
	b	.L117
.L116:
	ldr	r3, .L118+24
	ldr	r0, [r3]
	ldr	r3, .L118
	ldr	r3, [r3]
	cmp	r3, #4096
	it	cs
	movcs	r3, #4096
	uxth	r3, r3
	ldr	r2, .L118+16
	movs	r1, #1
	bl	DCD_EP_PrepareRx
.L117:
	movs	r3, #0
.L115:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L119:
	.align	2
.L118:
	.word	SCSI_blk_len
	.word	USBD_STORAGE_fops
	.word	SCSI_blk_addr
	.word	SCSI_blk_size
	.word	MSC_BOT_Data
	.word	MSC_BOT_csw
	.word	cdev
	.size	SCSI_ProcessWrite, .-SCSI_ProcessWrite
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
