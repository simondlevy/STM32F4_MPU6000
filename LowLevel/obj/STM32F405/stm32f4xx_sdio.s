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
	.file	"stm32f4xx_sdio.c"
	.text
	.section	.text.SDIO_DeInit,"ax",%progbits
	.align	1
	.global	SDIO_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_DeInit, %function
SDIO_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	mov	r0, #2048
	bl	RCC_APB2PeriphResetCmd
	movs	r1, #0
	mov	r0, #2048
	bl	RCC_APB2PeriphResetCmd
	nop
	pop	{r7, pc}
	.size	SDIO_DeInit, .-SDIO_DeInit
	.section	.text.SDIO_Init,"ax",%progbits
	.align	1
	.global	SDIO_Init
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_Init, %function
SDIO_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L3
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #32384
	bic	r3, r3, #127
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L3
	ldr	r3, [r7, #12]
	str	r3, [r2, #4]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073818624
	.size	SDIO_Init, .-SDIO_Init
	.section	.text.SDIO_StructInit,"ax",%progbits
	.align	1
	.global	SDIO_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_StructInit, %function
SDIO_StructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SDIO_StructInit, .-SDIO_StructInit
	.section	.text.SDIO_ClockCmd,"ax",%progbits
	.align	1
	.global	SDIO_ClockCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_ClockCmd, %function
SDIO_ClockCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L7
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	1109754016
	.size	SDIO_ClockCmd, .-SDIO_ClockCmd
	.section	.text.SDIO_SetPowerState,"ax",%progbits
	.align	1
	.global	SDIO_SetPowerState
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_SetPowerState, %function
SDIO_SetPowerState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L10
	ldr	r3, [r7, #4]
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073818624
	.size	SDIO_SetPowerState, .-SDIO_SetPowerState
	.section	.text.SDIO_GetPowerState,"ax",%progbits
	.align	1
	.global	SDIO_GetPowerState
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_GetPowerState, %function
SDIO_GetPowerState:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L14
	ldr	r3, [r3]
	and	r3, r3, #3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L15:
	.align	2
.L14:
	.word	1073818624
	.size	SDIO_GetPowerState, .-SDIO_GetPowerState
	.section	.text.SDIO_SendCommand,"ax",%progbits
	.align	1
	.global	SDIO_SendCommand
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_SendCommand, %function
SDIO_SendCommand:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r2, .L17
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r2, #8]
	ldr	r3, .L17
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #2040
	bic	r3, r3, #7
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L17
	ldr	r3, [r7, #12]
	str	r3, [r2, #12]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	1073818624
	.size	SDIO_SendCommand, .-SDIO_SendCommand
	.section	.text.SDIO_CmdStructInit,"ax",%progbits
	.align	1
	.global	SDIO_CmdStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_CmdStructInit, %function
SDIO_CmdStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SDIO_CmdStructInit, .-SDIO_CmdStructInit
	.section	.text.SDIO_GetCommandResponse,"ax",%progbits
	.align	1
	.global	SDIO_GetCommandResponse
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_GetCommandResponse, %function
SDIO_GetCommandResponse:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L22
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L23:
	.align	2
.L22:
	.word	1073818624
	.size	SDIO_GetCommandResponse, .-SDIO_GetCommandResponse
	.section	.text.SDIO_GetResponse,"ax",%progbits
	.align	1
	.global	SDIO_GetResponse
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_GetResponse, %function
SDIO_GetResponse:
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
	ldr	r3, .L26
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L27:
	.align	2
.L26:
	.word	1073818644
	.size	SDIO_GetResponse, .-SDIO_GetResponse
	.section	.text.SDIO_DataConfig,"ax",%progbits
	.align	1
	.global	SDIO_DataConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_DataConfig, %function
SDIO_DataConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r2, .L29
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r2, #36]
	ldr	r2, .L29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r2, #40]
	ldr	r3, .L29
	ldr	r3, [r3, #44]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #247
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, .L29
	ldr	r3, [r7, #12]
	str	r3, [r2, #44]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L30:
	.align	2
.L29:
	.word	1073818624
	.size	SDIO_DataConfig, .-SDIO_DataConfig
	.section	.text.SDIO_DataStructInit,"ax",%progbits
	.align	1
	.global	SDIO_DataStructInit
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_DataStructInit, %function
SDIO_DataStructInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	SDIO_DataStructInit, .-SDIO_DataStructInit
	.section	.text.SDIO_GetDataCounter,"ax",%progbits
	.align	1
	.global	SDIO_GetDataCounter
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_GetDataCounter, %function
SDIO_GetDataCounter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L34
	ldr	r3, [r3, #48]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	1073818624
	.size	SDIO_GetDataCounter, .-SDIO_GetDataCounter
	.section	.text.SDIO_ReadData,"ax",%progbits
	.align	1
	.global	SDIO_ReadData
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_ReadData, %function
SDIO_ReadData:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L38
	ldr	r3, [r3, #128]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L39:
	.align	2
.L38:
	.word	1073818624
	.size	SDIO_ReadData, .-SDIO_ReadData
	.section	.text.SDIO_WriteData,"ax",%progbits
	.align	1
	.global	SDIO_WriteData
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_WriteData, %function
SDIO_WriteData:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L41
	ldr	r3, [r7, #4]
	str	r3, [r2, #128]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L42:
	.align	2
.L41:
	.word	1073818624
	.size	SDIO_WriteData, .-SDIO_WriteData
	.section	.text.SDIO_GetFIFOCount,"ax",%progbits
	.align	1
	.global	SDIO_GetFIFOCount
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_GetFIFOCount, %function
SDIO_GetFIFOCount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L45
	ldr	r3, [r3, #72]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
	.word	1073818624
	.size	SDIO_GetFIFOCount, .-SDIO_GetFIFOCount
	.section	.text.SDIO_StartSDIOReadWait,"ax",%progbits
	.align	1
	.global	SDIO_StartSDIOReadWait
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_StartSDIOReadWait, %function
SDIO_StartSDIOReadWait:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L48
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L49:
	.align	2
.L48:
	.word	1109755296
	.size	SDIO_StartSDIOReadWait, .-SDIO_StartSDIOReadWait
	.section	.text.SDIO_StopSDIOReadWait,"ax",%progbits
	.align	1
	.global	SDIO_StopSDIOReadWait
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_StopSDIOReadWait, %function
SDIO_StopSDIOReadWait:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L51
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L52:
	.align	2
.L51:
	.word	1109755300
	.size	SDIO_StopSDIOReadWait, .-SDIO_StopSDIOReadWait
	.section	.text.SDIO_SetSDIOReadWaitMode,"ax",%progbits
	.align	1
	.global	SDIO_SetSDIOReadWaitMode
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_SetSDIOReadWaitMode, %function
SDIO_SetSDIOReadWaitMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L54
	ldr	r3, [r7, #4]
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L55:
	.align	2
.L54:
	.word	1109755304
	.size	SDIO_SetSDIOReadWaitMode, .-SDIO_SetSDIOReadWaitMode
	.section	.text.SDIO_SetSDIOOperation,"ax",%progbits
	.align	1
	.global	SDIO_SetSDIOOperation
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_SetSDIOOperation, %function
SDIO_SetSDIOOperation:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L57
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
	.word	1109755308
	.size	SDIO_SetSDIOOperation, .-SDIO_SetSDIOOperation
	.section	.text.SDIO_SendSDIOSuspendCmd,"ax",%progbits
	.align	1
	.global	SDIO_SendSDIOSuspendCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_SendSDIOSuspendCmd, %function
SDIO_SendSDIOSuspendCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L60
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L61:
	.align	2
.L60:
	.word	1109754284
	.size	SDIO_SendSDIOSuspendCmd, .-SDIO_SendSDIOSuspendCmd
	.section	.text.SDIO_CommandCompletionCmd,"ax",%progbits
	.align	1
	.global	SDIO_CommandCompletionCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_CommandCompletionCmd, %function
SDIO_CommandCompletionCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L63
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L64:
	.align	2
.L63:
	.word	1109754288
	.size	SDIO_CommandCompletionCmd, .-SDIO_CommandCompletionCmd
	.section	.text.SDIO_CEATAITCmd,"ax",%progbits
	.align	1
	.global	SDIO_CEATAITCmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_CEATAITCmd, %function
SDIO_CEATAITCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r2, r3
	ldr	r3, .L66
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L67:
	.align	2
.L66:
	.word	1109754292
	.size	SDIO_CEATAITCmd, .-SDIO_CEATAITCmd
	.section	.text.SDIO_SendCEATACmd,"ax",%progbits
	.align	1
	.global	SDIO_SendCEATACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_SendCEATACmd, %function
SDIO_SendCEATACmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L69
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L70:
	.align	2
.L69:
	.word	1109754296
	.size	SDIO_SendCEATACmd, .-SDIO_SendCEATACmd
	.section	.text.SDIO_DMACmd,"ax",%progbits
	.align	1
	.global	SDIO_DMACmd
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_DMACmd, %function
SDIO_DMACmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L72
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L73:
	.align	2
.L72:
	.word	1109755276
	.size	SDIO_DMACmd, .-SDIO_DMACmd
	.section	.text.SDIO_ITConfig,"ax",%progbits
	.align	1
	.global	SDIO_ITConfig
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_ITConfig, %function
SDIO_ITConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L75
	ldr	r3, .L78
	ldr	r2, [r3, #60]
	ldr	r1, .L78
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #60]
	b	.L77
.L75:
	ldr	r3, .L78
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #4]
	mvns	r3, r3
	ldr	r1, .L78
	ands	r3, r3, r2
	str	r3, [r1, #60]
.L77:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L79:
	.align	2
.L78:
	.word	1073818624
	.size	SDIO_ITConfig, .-SDIO_ITConfig
	.section	.text.SDIO_GetFlagStatus,"ax",%progbits
	.align	1
	.global	SDIO_GetFlagStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_GetFlagStatus, %function
SDIO_GetFlagStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L84
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L81
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L82
.L81:
	movs	r3, #0
	strb	r3, [r7, #15]
.L82:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L85:
	.align	2
.L84:
	.word	1073818624
	.size	SDIO_GetFlagStatus, .-SDIO_GetFlagStatus
	.section	.text.SDIO_ClearFlag,"ax",%progbits
	.align	1
	.global	SDIO_ClearFlag
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_ClearFlag, %function
SDIO_ClearFlag:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L87
	ldr	r3, [r7, #4]
	str	r3, [r2, #56]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L88:
	.align	2
.L87:
	.word	1073818624
	.size	SDIO_ClearFlag, .-SDIO_ClearFlag
	.section	.text.SDIO_GetITStatus,"ax",%progbits
	.align	1
	.global	SDIO_GetITStatus
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_GetITStatus, %function
SDIO_GetITStatus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L93
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L90
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L91
.L90:
	movs	r3, #0
	strb	r3, [r7, #15]
.L91:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L94:
	.align	2
.L93:
	.word	1073818624
	.size	SDIO_GetITStatus, .-SDIO_GetITStatus
	.section	.text.SDIO_ClearITPendingBit,"ax",%progbits
	.align	1
	.global	SDIO_ClearITPendingBit
	.syntax unified
	.thumb
	.thumb_func
	.type	SDIO_ClearITPendingBit, %function
SDIO_ClearITPendingBit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L96
	ldr	r3, [r7, #4]
	str	r3, [r2, #56]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L97:
	.align	2
.L96:
	.word	1073818624
	.size	SDIO_ClearITPendingBit, .-SDIO_ClearITPendingBit
	.ident	"GCC: (GNU Toolchain for the Arm Architecture 11.2-2022.02 (arm-11.14)) 11.2.1 20220111"
