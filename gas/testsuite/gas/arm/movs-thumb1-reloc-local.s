.arch armv6s-m
.text
.syntax unified
.thumb
foo:
movs r0, #:high_high:#bar
movs r0, #:high_low:#bar
movs r0, #:low_high:#bar
movs r0, #:low_low:#bar

.space 0x10000

bar:
