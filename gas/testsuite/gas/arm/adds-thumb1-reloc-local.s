.arch armv6s-m
.text
.syntax unified
.thumb
foo:
adds r0, #:high_high:#bar
adds r0, #:high_low:#bar
adds r0, #:low_high:#bar
adds r0, #:low_low:#bar

.space 0x10000

bar:
