	.text
	.arch armv6s-m
	.syntax unified
	.global	_start
	.thumb_func
	.type	_start, %function
	.type	thumb1, %function
_start:
thumb1:
	adds r0, #:high_high:#thumb3
	adds r1, #:high_low:#thumb3
	adds r2, #:low_high:#thumb1
	adds r3, #:low_low:#thumb1
	adds r4, #:low_low:#thumb3
	adds r5, #:low_high:#thumb3
	adds r6, #:high_low:#thumb1
	adds r7, #:high_high:#thumb1
	.thumb_func
	.type	thumb2, %function
thumb2:
	adds r0, #:high_high:#thumb3
	adds r1, #:high_low:#(var2 + 1)
	adds r2, #:low_high:#(thumb3 + 255)
	adds r3, #:low_low:#(var1 + 0xaa)
	adds r7, #:high_high:#var1 + 4
	adds r6, #:high_low:#thumb3
	adds r5, #:low_high:#var2 + 0xff
	adds r4, #:low_low:#var2 - (-2)
var1:
	.byte 1
var2:
	.byte 2

	.section .far, "ax", %progbits
	.thumb_func
	.type	thumb3, %function
thumb3:
	adds r0, #:high_high:#thumb1
	adds r1, #:high_low:#thumb2
	adds r2, #:low_high:#thumb3
	adds r3, #:low_low:#thumb1

