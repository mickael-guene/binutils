	.text
	.arch armv6s-m
	.syntax unified
	.global	_start
	.thumb_func
	.type	_start, %function
	.type	thumb1, %function
_start:
thumb1:
	movs r0, #:high_high:#thumb3
	movs r1, #:high_low:#thumb3
	movs r2, #:low_high:#thumb1
	movs r3, #:low_low:#thumb1
	movs r4, #:low_low:#thumb3
	movs r5, #:low_high:#thumb3
	movs r6, #:high_low:#thumb1
	movs r7, #:high_high:#thumb1
	.thumb_func
	.type	thumb2, %function
thumb2:
	movs r0, #:high_high:#(thumb3 + 0)
	movs r1, #:high_low:#(thumb2 + 1)
	movs r2, #:low_high:#(var1 + 255)
	movs r3, #:low_low:#var1
	movs r7, #:high_high:#var1 + 4
	movs r6, #:high_low:#var2
	movs r5, #:low_high:#var2 + 0xff
	movs r4, #:low_low:#var2 - (-1)
var1:
	.byte 1
var2:
	.byte 2

	.section .far, "ax", %progbits
	.thumb_func
	.type	thumb3, %function
thumb3:
	movs r0, #:high_high:#thumb1
	movs r1, #:high_low:#thumb2
	movs r2, #:low_high:#thumb3
	movs r3, #:low_low:#thumb1

