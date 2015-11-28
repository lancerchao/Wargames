	.file	"darklang.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	isPrime
	.type	isPrime, @function
isPrime:
.LFB21:
	.cfi_startproc
	cmpl	%edi, %esi
	jl	.L5
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L11:
	addl	$1, %esi
	cmpl	%edi, %esi
	je	.L6
.L5:
	movl	%edi, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	jne	.L11
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE21:
	.size	isPrime, .-isPrime
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	dootdoot
	.type	dootdoot, @function
dootdoot:
.LFB23:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%esi, %eax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	cmpl	%edi, %esi
	movl	%edi, 72(%rsp)
	movl	%esi, 48(%rsp)
	jg	.L40
	testl	%esi, %esi
	je	.L41
	cmpl	%edi, %esi
	je	.L41
	leal	-1(%rsi), %edx
	leal	-2(%rsi), %ecx
	subl	$5, %eax
	movl	$0, 24(%rsp)
	movl	%eax, 92(%rsp)
	movl	%edx, 76(%rsp)
	movl	%ecx, 80(%rsp)
	leal	-3(%rsi), %edx
	leal	-4(%rsi), %ecx
	movl	%edx, 84(%rsp)
	movl	%ecx, 88(%rsp)
.L14:
	subl	$1, 72(%rsp)
	movl	76(%rsp), %ecx
	movl	72(%rsp), %eax
	cmpl	%ecx, %eax
	jl	.L42
	je	.L43
	testl	%ecx, %ecx
	je	.L43
	movl	%eax, 52(%rsp)
	movl	48(%rsp), %eax
	movl	$0, 28(%rsp)
	subl	$6, %eax
	movl	%eax, 20(%rsp)
.L16:
	subl	$1, 52(%rsp)
	movl	80(%rsp), %ecx
	movl	52(%rsp), %eax
	cmpl	%ecx, %eax
	jl	.L44
	je	.L45
	testl	%ecx, %ecx
	je	.L45
	movl	%eax, 56(%rsp)
	movl	48(%rsp), %eax
	movl	$0, 32(%rsp)
	subl	$7, %eax
	movl	%eax, 8(%rsp)
.L18:
	subl	$1, 56(%rsp)
	movl	84(%rsp), %ecx
	movl	56(%rsp), %eax
	cmpl	%ecx, %eax
	jl	.L46
	je	.L47
	testl	%ecx, %ecx
	je	.L47
	movl	%eax, 60(%rsp)
	movl	48(%rsp), %eax
	movl	$0, 36(%rsp)
	leal	-8(%rax), %r14d
	movl	%r14d, %r15d
.L20:
	subl	$1, 60(%rsp)
	movl	88(%rsp), %ecx
	movl	60(%rsp), %eax
	cmpl	%ecx, %eax
	jl	.L48
	je	.L49
	testl	%ecx, %ecx
	je	.L49
	movl	%eax, 64(%rsp)
	movl	48(%rsp), %eax
	movl	$0, 40(%rsp)
	leal	-9(%rax), %r13d
	movl	%r13d, %r14d
.L22:
	subl	$1, 64(%rsp)
	movl	92(%rsp), %edx
	movl	64(%rsp), %eax
	cmpl	%edx, %eax
	jl	.L50
	je	.L51
	testl	%edx, %edx
	je	.L51
	movl	%eax, 68(%rsp)
	movl	$0, 44(%rsp)
.L24:
	subl	$1, 68(%rsp)
	movl	20(%rsp), %ecx
	movl	68(%rsp), %eax
	cmpl	%ecx, %eax
	jl	.L52
	je	.L53
	testl	%ecx, %ecx
	je	.L53
	movl	%eax, 12(%rsp)
	movl	$0, 16(%rsp)
.L26:
	subl	$1, 12(%rsp)
	movl	8(%rsp), %edx
	movl	12(%rsp), %eax
	cmpl	%edx, %eax
	jl	.L54
	je	.L55
	testl	%edx, %edx
	je	.L55
	movl	%eax, %ebp
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L28:
	subl	$1, %ebp
	cmpl	%r15d, %ebp
	jl	.L56
	je	.L57
	testl	%r15d, %r15d
	je	.L57
	movl	%ebp, %r13d
	xorl	%ebx, %ebx
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L31:
	je	.L68
.L30:
	subl	$1, %r13d
	xorl	%eax, %eax
	movl	%r14d, %esi
	movl	%r13d, %edi
	call	dootdoot
	addl	%eax, %ebx
	cmpl	%r15d, %r13d
	jge	.L31
.L29:
	addl	%ebx, %r12d
	cmpl	8(%rsp), %ebp
	jl	.L27
	jne	.L28
	addl	$1, %r12d
.L27:
	addl	%r12d, 16(%rsp)
	movl	20(%rsp), %ecx
	cmpl	%ecx, 12(%rsp)
	jl	.L25
	jne	.L26
	addl	$1, 16(%rsp)
.L25:
	movl	16(%rsp), %edx
	movl	92(%rsp), %ecx
	addl	%edx, 44(%rsp)
	cmpl	%ecx, 68(%rsp)
	jl	.L23
	jne	.L24
	addl	$1, 44(%rsp)
.L23:
	movl	44(%rsp), %edx
	movl	88(%rsp), %ecx
	addl	%edx, 40(%rsp)
	cmpl	%ecx, 64(%rsp)
	jl	.L21
	jne	.L22
	addl	$1, 40(%rsp)
.L21:
	movl	40(%rsp), %edx
	movl	84(%rsp), %ecx
	addl	%edx, 36(%rsp)
	cmpl	%ecx, 60(%rsp)
	jl	.L19
	jne	.L20
	addl	$1, 36(%rsp)
.L19:
	movl	36(%rsp), %edx
	movl	80(%rsp), %ecx
	addl	%edx, 32(%rsp)
	cmpl	%ecx, 56(%rsp)
	jl	.L17
	jne	.L18
	addl	$1, 32(%rsp)
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L68:
	addl	$1, %ebx
	jmp	.L29
.L56:
	xorl	%ebx, %ebx
	jmp	.L29
.L57:
	movl	$1, %ebx
	jmp	.L29
.L54:
	xorl	%r12d, %r12d
	jmp	.L27
.L55:
	movl	$1, %r12d
	jmp	.L27
.L42:
	movl	$0, 28(%rsp)
.L15:
	movl	28(%rsp), %edx
	movl	48(%rsp), %ecx
	addl	%edx, 24(%rsp)
	cmpl	%ecx, 72(%rsp)
	jl	.L13
	jne	.L14
	addl	$1, 24(%rsp)
	jmp	.L13
.L41:
	movl	$1, 24(%rsp)
.L13:
	movl	24(%rsp), %eax
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L46:
	.cfi_restore_state
	movl	$0, 36(%rsp)
	jmp	.L19
.L45:
	movl	$1, 32(%rsp)
.L17:
	movl	32(%rsp), %edx
	movl	76(%rsp), %ecx
	addl	%edx, 28(%rsp)
	cmpl	%ecx, 52(%rsp)
	jl	.L15
	jne	.L16
	addl	$1, 28(%rsp)
	jmp	.L15
.L44:
	movl	$0, 32(%rsp)
	jmp	.L17
.L43:
	movl	$1, 28(%rsp)
	jmp	.L15
.L53:
	movl	$1, 16(%rsp)
	jmp	.L25
.L40:
	movl	$0, 24(%rsp)
	jmp	.L13
.L52:
	movl	$0, 16(%rsp)
	jmp	.L25
.L51:
	movl	$1, 44(%rsp)
	jmp	.L23
.L50:
	movl	$0, 44(%rsp)
	jmp	.L23
.L49:
	movl	$1, 40(%rsp)
	jmp	.L21
.L48:
	movl	$0, 40(%rsp)
	jmp	.L21
.L47:
	movl	$1, 36(%rsp)
	jmp	.L19
	.cfi_endproc
.LFE23:
	.size	dootdoot, .-dootdoot
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	brotherman
	.type	brotherman, @function
brotherman:
.LFB25:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	testl	%edi, %edi
	je	.L70
	cmpl	$2, %edi
	movb	$1, %bl
	jg	.L79
.L70:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	.cfi_restore_state
	cmpl	$3, %edi
	movl	$1, %r13d
	movl	$1, %edx
	jne	.L80
.L71:
	leal	0(%r13,%rdx), %ecx
	movl	$-1960301249, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	leal	(%rdx,%rcx), %ebx
	sarl	$29, %ebx
	subl	%eax, %ebx
	imull	$987654321, %ebx, %ebx
	subl	%ebx, %ecx
	movl	%ecx, %ebx
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L80:
	.cfi_restore_state
	movl	%edi, %r12d
	leal	-2(%rdi), %edi
	xorl	%eax, %eax
	leal	-3(%r12), %r14d
	call	brotherman
	movl	%r14d, %edi
	movl	%eax, %ebp
	xorl	%eax, %eax
	call	brotherman
	leal	0(%rbp,%rax), %esi
	movl	$-1960301249, %ebp
	movl	%esi, %eax
	imull	%ebp
	movl	%esi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rsi), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %esi
	cmpl	$4, %r12d
	movl	%esi, %r13d
	je	.L75
	movl	%r14d, %edi
	xorl	%eax, %eax
	call	brotherman
	leal	-4(%r12), %edi
	movl	%eax, %ebx
	xorl	%eax, %eax
	call	brotherman
	leal	(%rbx,%rax), %ecx
	movl	%ecx, %eax
	imull	%ebp
	movl	%ecx, %eax
	sarl	$31, %eax
	addl	%ecx, %edx
	sarl	$29, %edx
	subl	%eax, %edx
	imull	$987654321, %edx, %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	jmp	.L71
.L75:
	movl	%ebx, %edx
	jmp	.L71
	.cfi_endproc
.LFE25:
	.size	brotherman, .-brotherman
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	bill
	.type	bill, @function
bill:
.LFB26:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	xorl	%r14d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$-1960301249, %r9d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	testl	%edi, %edi
	je	.L156
.L255:
	leal	-4(%rdi), %ebx
	leal	-7(%rdi), %ecx
	xorl	%r12d, %r12d
	leal	-5(%rdi), %r8d
	leal	-8(%rdi), %r11d
	leal	-6(%rdi), %r15d
	leal	4(%rbx), %ebp
	movl	%ecx, %r13d
	movl	$1, %r10d
	cmpl	$2, %ebp
	jg	.L252
.L83:
	leal	3(%rbx), %esi
	cmpl	$1, %esi
	jle	.L174
	cmpl	$2, %esi
	je	.L147
	testb	$1, %sil
	je	.L148
	movl	$2, %ecx
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L240:
	movl	%esi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L148
.L149:
	addl	$1, %ecx
	cmpl	%ecx, %esi
	jne	.L240
.L147:
	subl	$2, %r8d
	subl	$2, %r13d
	subl	$2, %r11d
	subl	$2, %r15d
	cmpl	$-2, %ebx
	leal	1(%r12,%r10), %r12d
	leal	-2(%rbx), %eax
	je	.L82
	movl	%eax, %ebx
	movl	$1, %r10d
	leal	4(%rbx), %ebp
	cmpl	$2, %ebp
	jle	.L83
.L252:
	cmpl	$3, %ebp
	movb	$2, %r10b
	je	.L83
	cmpl	$4, %ebp
	jne	.L84
	movl	%ebx, %eax
	movl	$1, 4(%rsp)
	addl	$1, %eax
	movl	%eax, (%rsp)
	je	.L83
.L85:
	cmpl	$2, (%rsp)
	jg	.L253
	movl	4(%rsp), %edi
	addl	$1, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %esi
	sarl	$29, %esi
	subl	%eax, %esi
	imull	$987654321, %esi, %ecx
	subl	%ecx, %edi
	cmpl	$4, %ebp
	movl	$1, %ecx
	movl	%edi, %esi
	jne	.L254
.L112:
	addl	%esi, %ecx
	movl	%ecx, %eax
	imull	%r9d
	movl	%ecx, %eax
	sarl	$31, %eax
	leal	(%rdx,%rcx), %r10d
	movl	$1431655766, %edx
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %ecx
	movl	%ecx, %eax
	movl	%ecx, %r10d
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	cmpl	%eax, %ecx
	jne	.L83
	leal	-1(%rbp), %edi
	xorl	%eax, %eax
	movl	$5, %esi
	movl	%r9d, (%rsp)
	leal	1(%rcx), %r13d
	leal	-2(%rbp), %ebx
	call	dootdoot
	movl	$7, %ecx
	cltd
	movl	%eax, %r15d
	idivl	%ecx
	movl	(%rsp), %r9d
	testl	%edx, %edx
	je	.L151
	cmpl	$2, %ebx
	je	.L142
	testb	$1, %bl
	je	.L143
	movl	$2, %ecx
	jmp	.L144
	.p2align 4,,10
	.p2align 3
.L239:
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L143
.L144:
	addl	$1, %ecx
	cmpl	%ebx, %ecx
	jne	.L239
.L142:
	leal	1(%r13,%r15), %eax
	leal	-3(%rbp), %edi
	addl	%eax, %r12d
	addl	%r12d, %r14d
	testl	%edi, %edi
	jne	.L255
	.p2align 4,,10
	.p2align 3
.L156:
	xorl	%r12d, %r12d
.L82:
	xorl	%eax, %eax
	movl	$5, %esi
	movl	$-1, %edi
	call	dootdoot
	movl	$-1840700269, %edx
	movl	%eax, %r15d
	imull	%edx
	movl	%r15d, %eax
	sarl	$31, %eax
	addl	%r15d, %edx
	sarl	$2, %edx
	subl	%eax, %edx
	leal	0(,%rdx,8), %eax
	subl	%edx, %eax
	cmpl	%eax, %r15d
	je	.L175
	movl	$1, %r10d
	xorl	%eax, %eax
.L141:
	addl	%r15d, %eax
.L146:
	addl	%eax, %r10d
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	addl	%r10d, %r12d
	popq	%rbx
	.cfi_def_cfa_offset 48
	leal	(%r14,%r12), %eax
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L175:
	.cfi_restore_state
	movl	$-2, %ebx
	movl	$1, %r13d
.L151:
	movl	%ebx, %edi
	xorl	%eax, %eax
	addl	$1, %r15d
	call	bill
	movl	%r13d, %r10d
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L148:
	leal	-2(%rbp), %edi
	xorl	%eax, %eax
	movl	%r10d, (%rsp)
	call	such
	movl	(%rsp), %r10d
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L174:
	xorl	%eax, %eax
	jmp	.L146
.L84:
	movl	%ebx, %eax
	movl	%ebx, %ecx
	addl	$1, %eax
	movl	%eax, (%rsp)
	je	.L256
	cmpl	$2, (%rsp)
	movl	$1, %esi
	jg	.L257
.L88:
	testl	%ebx, %ebx
	je	.L94
	cmpl	$2, %ebx
	movl	$1, %ecx
	jg	.L258
.L94:
	addl	%ecx, %esi
	movl	%esi, %eax
	imull	%r9d
	movl	%esi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rsi), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	movl	(%rsp), %eax
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %esi
	testl	%eax, %eax
	movl	%esi, 4(%rsp)
	jne	.L85
	movl	4(%rsp), %eax
	movl	$987654321, %edi
	movl	%ebx, 4(%rsp)
	cltd
	idivl	%edi
	movl	%edx, %esi
.L114:
	testl	%ebx, %ebx
	je	.L127
	cmpl	$2, %ebx
	movl	$1, 4(%rsp)
	jg	.L259
.L127:
	movl	(%rsp), %edi
	addl	4(%rsp), %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L143:
	leal	-3(%rbp), %edi
	xorl	%eax, %eax
	call	such
	movl	%r13d, %r10d
	jmp	.L141
.L254:
	movl	%ebx, 4(%rsp)
	movl	$1, (%rsp)
	jmp	.L114
.L253:
	testl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	%r8d, %esi
	je	.L101
	cmpl	$2, %ebx
	movl	$1, %ecx
	jg	.L260
.L101:
	testl	%r8d, %r8d
	je	.L107
	cmpl	$2, %r8d
	movl	$1, %esi
	jg	.L261
.L107:
	addl	%ecx, %esi
	movl	4(%rsp), %edi
	movl	%esi, %eax
	imull	%r9d
	leal	(%rdx,%rsi), %eax
	movl	%esi, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %esi
	addl	%esi, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	addl	%edi, %edx
	sarl	$29, %edx
	movl	%edx, %esi
	subl	%eax, %esi
	imull	$987654321, %esi, %ecx
	subl	%ecx, %edi
	cmpl	$4, %ebp
	movl	$1, %ecx
	movl	%edi, %esi
	je	.L112
	testl	%ebx, %ebx
	movl	%ebx, 4(%rsp)
	movl	%r8d, (%rsp)
	je	.L262
	cmpl	$2, %ebx
	jg	.L117
	movl	$1, 8(%rsp)
.L116:
	testl	%r8d, %r8d
	je	.L122
	cmpl	$2, %r8d
	movl	$1, (%rsp)
	jg	.L263
.L122:
	movl	8(%rsp), %ecx
	addl	(%rsp), %ecx
	movl	%ecx, %eax
	imull	%r9d
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, (%rsp)
	jmp	.L114
.L259:
	testl	%r8d, %r8d
	movl	%r8d, 8(%rsp)
	movl	%r15d, 4(%rsp)
	je	.L129
	cmpl	$2, %r8d
	jg	.L130
	movl	$1, 8(%rsp)
.L129:
	testl	%r15d, %r15d
	je	.L135
	cmpl	$2, %r15d
	movl	$1, 4(%rsp)
	jg	.L264
.L135:
	movl	8(%rsp), %ecx
	addl	4(%rsp), %ecx
	movl	%ecx, %eax
	imull	%r9d
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, 4(%rsp)
	jmp	.L127
.L256:
	xorl	%esi, %esi
	jmp	.L88
.L262:
	movl	$0, 8(%rsp)
	jmp	.L116
.L257:
	xorl	%r10d, %r10d
	testl	%ebx, %ebx
	movl	%r8d, %esi
	je	.L91
	cmpl	$2, %ebx
	jg	.L92
	movl	%r8d, %esi
	movl	$1, %r10d
.L91:
	testl	%r8d, %r8d
	je	.L93
	cmpl	$2, %r8d
	movl	$1, %esi
	jle	.L93
	movl	%r15d, %edi
	xorl	%eax, %eax
	movl	%r8d, 24(%rsp)
	movl	%r11d, 20(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r10d, 12(%rsp)
	movl	%ecx, 8(%rsp)
	call	brotherman
	movl	%r13d, %edi
	movl	%eax, 4(%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	4(%rsp), %edi
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r8d
	movl	20(%rsp), %r11d
	movl	12(%rsp), %r10d
	movl	8(%rsp), %ecx
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %esi
	sarl	$29, %esi
	subl	%eax, %esi
	imull	$987654321, %esi, %esi
	subl	%esi, %edi
	movl	%edi, %esi
.L93:
	addl	%esi, %r10d
	movl	%r10d, %eax
	imull	%r9d
	movl	%r10d, %eax
	sarl	$31, %eax
	leal	(%rdx,%r10), %esi
	sarl	$29, %esi
	subl	%eax, %esi
	imull	$987654321, %esi, %esi
	subl	%esi, %r10d
	movl	%r10d, %esi
	jmp	.L88
.L130:
	xorl	%r10d, %r10d
	testl	%r15d, %r15d
	movl	%r13d, %ecx
	je	.L132
	cmpl	$2, %r15d
	jg	.L133
	movl	%r13d, %ecx
	movl	$1, %r10d
.L132:
	testl	%r13d, %r13d
	je	.L134
	cmpl	$2, %r13d
	movl	$1, %ecx
	jle	.L134
	movl	%r11d, %edi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%r10d, 20(%rsp)
	movl	%esi, 16(%rsp)
	movl	%r11d, 12(%rsp)
	call	brotherman
	leal	-5(%rbx), %edi
	movl	%eax, 8(%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	8(%rsp), %edi
	movl	24(%rsp), %r9d
	movl	28(%rsp), %r8d
	movl	20(%rsp), %r10d
	movl	16(%rsp), %esi
	movl	12(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
.L134:
	addl	%r10d, %ecx
	movl	%ecx, %eax
	imull	%r9d
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, 8(%rsp)
	jmp	.L129
.L260:
	xorl	%ecx, %ecx
	testl	%r8d, %r8d
	movl	%r15d, %r10d
	je	.L104
	cmpl	$2, %r8d
	jg	.L105
	movl	%r15d, %r10d
	movl	$1, %ecx
.L104:
	testl	%r15d, %r15d
	je	.L106
	cmpl	$2, %r15d
	movl	$1, %r10d
	jle	.L106
	movl	%r13d, %edi
	xorl	%eax, %eax
	movl	%r8d, 24(%rsp)
	movl	%r9d, 20(%rsp)
	movl	%esi, 16(%rsp)
	movl	%ecx, 12(%rsp)
	movl	%r11d, 8(%rsp)
	call	brotherman
	movl	8(%rsp), %r11d
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movl	%r11d, %edi
	call	brotherman
	movl	(%rsp), %edi
	movl	20(%rsp), %r9d
	movl	24(%rsp), %r8d
	movl	16(%rsp), %esi
	movl	12(%rsp), %ecx
	movl	8(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %r10d
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %edi
	movl	%edi, %r10d
.L106:
	addl	%ecx, %r10d
	movl	%r10d, %eax
	movl	%r10d, %ecx
	imull	%r9d
	leal	(%rdx,%r10), %eax
	movl	%r10d, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %ecx
	jmp	.L101
.L117:
	xorl	%r10d, %r10d
	testl	%r8d, %r8d
	movl	%r15d, %ecx
	je	.L119
	cmpl	$2, %r8d
	jg	.L120
	movl	%r15d, %ecx
	movl	$1, %r10d
.L119:
	testl	%r15d, %r15d
	je	.L121
	cmpl	$2, %r15d
	movl	$1, %ecx
	jle	.L121
	movl	%r13d, %edi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%r10d, 20(%rsp)
	movl	%esi, 16(%rsp)
	movl	%r11d, 12(%rsp)
	call	brotherman
	movl	12(%rsp), %r11d
	movl	%eax, 8(%rsp)
	xorl	%eax, %eax
	movl	%r11d, %edi
	call	brotherman
	movl	8(%rsp), %edi
	movl	24(%rsp), %r9d
	movl	28(%rsp), %r8d
	movl	20(%rsp), %r10d
	movl	16(%rsp), %esi
	movl	12(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
.L121:
	addl	%r10d, %ecx
	movl	%ecx, %eax
	imull	%r9d
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, 8(%rsp)
	jmp	.L116
.L263:
	testl	%r15d, %r15d
	movl	%r15d, %r10d
	movl	%r13d, %ecx
	je	.L124
	cmpl	$2, %r15d
	jg	.L125
	movl	%r13d, %ecx
	movl	$1, %r10d
.L124:
	testl	%r13d, %r13d
	je	.L126
	cmpl	$2, %r13d
	movl	$1, %ecx
	jle	.L126
	movl	%r11d, %edi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%r10d, 20(%rsp)
	movl	%esi, 16(%rsp)
	movl	%r11d, 12(%rsp)
	call	brotherman
	leal	-5(%rbx), %edi
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	(%rsp), %edi
	movl	24(%rsp), %r9d
	movl	28(%rsp), %r8d
	movl	20(%rsp), %r10d
	movl	16(%rsp), %esi
	movl	12(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
.L126:
	addl	%r10d, %ecx
	movl	%ecx, %eax
	imull	%r9d
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, (%rsp)
	jmp	.L122
.L264:
	testl	%r13d, %r13d
	movl	%r13d, %r10d
	movl	%r11d, %ecx
	je	.L137
	cmpl	$2, %r13d
	jg	.L138
	movl	%r11d, %ecx
	movl	$1, %r10d
.L137:
	testl	%r11d, %r11d
	je	.L139
	cmpl	$2, %r11d
	movl	$1, %ecx
	jle	.L139
	leal	-5(%rbx), %edi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r9d, 20(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%esi, 12(%rsp)
	call	brotherman
	leal	-6(%rbx), %edi
	movl	%eax, 4(%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	4(%rsp), %edi
	movl	20(%rsp), %r9d
	movl	28(%rsp), %r8d
	movl	24(%rsp), %r11d
	movl	16(%rsp), %r10d
	movl	12(%rsp), %esi
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
.L139:
	addl	%r10d, %ecx
	movl	%ecx, %eax
	imull	%r9d
	leal	(%rdx,%rcx), %eax
	movl	%ecx, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, 4(%rsp)
	jmp	.L135
.L261:
	testl	%r15d, %r15d
	movl	%r15d, %r10d
	movl	%r13d, %esi
	je	.L109
	cmpl	$2, %r15d
	jg	.L110
	movl	%r13d, %esi
	movl	$1, %r10d
.L109:
	testl	%r13d, %r13d
	je	.L111
	cmpl	$2, %r13d
	movl	$1, %esi
	jle	.L111
	movl	%r11d, %edi
	xorl	%eax, %eax
	movl	%r8d, 24(%rsp)
	movl	%r9d, 20(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%ecx, 12(%rsp)
	movl	%r11d, 8(%rsp)
	call	brotherman
	leal	-5(%rbx), %edi
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	(%rsp), %edi
	movl	20(%rsp), %r9d
	movl	24(%rsp), %r8d
	movl	16(%rsp), %r10d
	movl	12(%rsp), %ecx
	movl	8(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %esi
	sarl	$29, %esi
	subl	%eax, %esi
	imull	$987654321, %esi, %esi
	subl	%esi, %edi
	movl	%edi, %esi
.L111:
	addl	%esi, %r10d
	movl	%r10d, %eax
	imull	%r9d
	movl	%r10d, %eax
	sarl	$31, %eax
	leal	(%rdx,%r10), %esi
	sarl	$29, %esi
	subl	%eax, %esi
	imull	$987654321, %esi, %esi
	subl	%esi, %r10d
	movl	%r10d, %esi
	jmp	.L107
.L258:
	testl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	%r15d, %ecx
	je	.L96
	cmpl	$2, %r8d
	jg	.L97
	movl	%r15d, %ecx
	movl	$1, %r10d
.L96:
	testl	%r15d, %r15d
	je	.L98
	cmpl	$2, %r15d
	movl	$1, %ecx
	jle	.L98
	movl	%r13d, %edi
	xorl	%eax, %eax
	movl	%r8d, 24(%rsp)
	movl	%r9d, 20(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%esi, 12(%rsp)
	movl	%r11d, 8(%rsp)
	call	brotherman
	movl	8(%rsp), %r11d
	movl	%eax, 4(%rsp)
	xorl	%eax, %eax
	movl	%r11d, %edi
	call	brotherman
	movl	4(%rsp), %edi
	movl	20(%rsp), %r9d
	movl	24(%rsp), %r8d
	movl	16(%rsp), %r10d
	movl	12(%rsp), %esi
	movl	8(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
.L98:
	addl	%ecx, %r10d
	movl	%r10d, %eax
	imull	%r9d
	movl	%r10d, %eax
	sarl	$31, %eax
	leal	(%rdx,%r10), %ecx
	sarl	$29, %ecx
	subl	%eax, %ecx
	imull	$987654321, %ecx, %ecx
	subl	%ecx, %r10d
	movl	%r10d, %ecx
	jmp	.L94
.L92:
	movl	%r8d, %edi
	xorl	%eax, %eax
	movl	%r11d, 24(%rsp)
	movl	%r9d, 20(%rsp)
	movl	%r8d, 12(%rsp)
	movl	%r8d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	call	brotherman
	movl	%r15d, %edi
	movl	%eax, 4(%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	4(%rsp), %edi
	movl	20(%rsp), %r9d
	movl	24(%rsp), %r11d
	movl	16(%rsp), %ecx
	movl	12(%rsp), %esi
	movl	8(%rsp), %r8d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %r10d
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %edi
	movl	%edi, %r10d
	jmp	.L91
.L125:
	movl	%r13d, %edi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%esi, 20(%rsp)
	movl	%r11d, 12(%rsp)
	movl	%r13d, 16(%rsp)
	call	brotherman
	movl	12(%rsp), %r11d
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movl	%r11d, %edi
	call	brotherman
	movl	(%rsp), %edi
	movl	24(%rsp), %r9d
	movl	28(%rsp), %r8d
	movl	20(%rsp), %esi
	movl	16(%rsp), %ecx
	movl	12(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %r10d
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %edi
	movl	%edi, %r10d
	jmp	.L124
.L105:
	movl	%r15d, %edi
	xorl	%eax, %eax
	movl	%r8d, 24(%rsp)
	movl	%r11d, 20(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%r8d, 12(%rsp)
	movl	%r15d, 8(%rsp)
	call	brotherman
	movl	%r13d, %edi
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	(%rsp), %edi
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r8d
	movl	20(%rsp), %r11d
	movl	12(%rsp), %esi
	movl	8(%rsp), %r10d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	leal	(%rdx,%rdi), %eax
	movl	%edi, %edx
	sarl	$31, %edx
	sarl	$29, %eax
	subl	%edx, %eax
	imull	$987654321, %eax, %eax
	subl	%eax, %edi
	movl	%edi, %ecx
	jmp	.L104
.L110:
	movl	%r13d, %edi
	xorl	%eax, %eax
	movl	%r8d, 24(%rsp)
	movl	%r9d, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r13d, 12(%rsp)
	call	brotherman
	movl	8(%rsp), %r11d
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movl	%r11d, %edi
	call	brotherman
	movl	(%rsp), %edi
	movl	20(%rsp), %r9d
	movl	24(%rsp), %r8d
	movl	16(%rsp), %ecx
	movl	12(%rsp), %esi
	movl	8(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %r10d
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %edi
	movl	%edi, %r10d
	jmp	.L109
.L133:
	movl	%r13d, %edi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%esi, 20(%rsp)
	movl	%r11d, 12(%rsp)
	movl	%r13d, 16(%rsp)
	call	brotherman
	movl	12(%rsp), %r11d
	movl	%eax, 8(%rsp)
	xorl	%eax, %eax
	movl	%r11d, %edi
	call	brotherman
	movl	8(%rsp), %edi
	movl	24(%rsp), %r9d
	movl	28(%rsp), %r8d
	movl	20(%rsp), %esi
	movl	16(%rsp), %ecx
	movl	12(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %r10d
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %edi
	movl	%edi, %r10d
	jmp	.L132
.L138:
	movl	%r11d, %edi
	xorl	%eax, %eax
	movl	%r8d, 28(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%esi, 20(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%r11d, 12(%rsp)
	call	brotherman
	leal	-5(%rbx), %edi
	movl	%eax, 4(%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	4(%rsp), %edi
	movl	24(%rsp), %r9d
	movl	28(%rsp), %r8d
	movl	20(%rsp), %esi
	movl	16(%rsp), %ecx
	movl	12(%rsp), %r11d
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %r10d
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %edi
	movl	%edi, %r10d
	jmp	.L137
.L120:
	movl	%edi, 16(%rsp)
	xorl	%eax, %eax
	movl	%r15d, %edi
	movl	%r8d, 28(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r9d, 20(%rsp)
	movl	%r15d, 12(%rsp)
	call	brotherman
	movl	%r13d, %edi
	movl	%eax, 8(%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	8(%rsp), %edi
	movl	20(%rsp), %r9d
	movl	28(%rsp), %r8d
	movl	24(%rsp), %r11d
	movl	16(%rsp), %esi
	movl	12(%rsp), %ecx
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %r10d
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %edi
	movl	%edi, %r10d
	jmp	.L119
.L97:
	movl	%r15d, %edi
	xorl	%eax, %eax
	movl	%r8d, 24(%rsp)
	movl	%r11d, 20(%rsp)
	movl	%r9d, 16(%rsp)
	movl	%esi, 12(%rsp)
	movl	%r15d, 8(%rsp)
	call	brotherman
	movl	%r13d, %edi
	movl	%eax, 4(%rsp)
	xorl	%eax, %eax
	call	brotherman
	movl	4(%rsp), %edi
	movl	16(%rsp), %r9d
	movl	24(%rsp), %r8d
	movl	20(%rsp), %r11d
	movl	12(%rsp), %esi
	movl	8(%rsp), %ecx
	addl	%eax, %edi
	movl	%edi, %eax
	imull	%r9d
	movl	%edi, %eax
	sarl	$31, %eax
	leal	(%rdx,%rdi), %r10d
	sarl	$29, %r10d
	subl	%eax, %r10d
	imull	$987654321, %r10d, %r10d
	subl	%r10d, %edi
	movl	%edi, %r10d
	jmp	.L96
	.cfi_endproc
.LFE26:
	.size	bill, .-bill
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	such
	.type	such, @function
such:
.LFB24:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leal	-3(%rdi), %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r13d, %r13d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leal	-1(%rdi), %ebx
	movl	$-1840700269, %r12d
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
.L279:
	leal	3(%r14), %ebp
	xorl	%eax, %eax
	movl	$5, %esi
	movl	%ebp, %edi
	call	dootdoot
	movl	%eax, %r15d
	imull	%r12d
	movl	%r15d, %eax
	sarl	$31, %eax
	addl	%r15d, %edx
	sarl	$2, %edx
	subl	%eax, %edx
	leal	0(,%rdx,8), %eax
	subl	%edx, %eax
	cmpl	%eax, %r15d
	je	.L306
	cmpl	$1, %ebx
	jle	.L280
	cmpl	$2, %ebx
	je	.L268
	testb	$1, %bl
	je	.L269
	movl	$2, %ecx
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L300:
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L269
.L270:
	addl	$1, %ecx
	cmpl	%ecx, %ebx
	jne	.L300
.L268:
	leal	-2(%rbp), %edi
	xorl	%eax, %eax
	call	bill
	addl	$1, %eax
.L267:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	addl	%r15d, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	addl	%r13d, %eax
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L269:
	.cfi_restore_state
	leal	1(%r14), %edi
	movl	$5, %esi
	xorl	%eax, %eax
	call	dootdoot
	movl	%eax, %esi
	imull	%r12d
	movl	%esi, %eax
	sarl	$31, %eax
	addl	%esi, %edx
	sarl	$2, %edx
	subl	%eax, %edx
	leal	0(,%rdx,8), %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	je	.L307
	cmpl	$1, %r14d
	jle	.L281
	cmpl	$2, %r14d
	je	.L273
	testb	$1, %r14b
	je	.L274
	movl	$2, %ecx
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L301:
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L274
.L275:
	addl	$1, %ecx
	cmpl	%ecx, %r14d
	jne	.L301
.L273:
	leal	-4(%rbp), %edi
	xorl	%eax, %eax
	movl	%esi, 12(%rsp)
	call	bill
	movl	12(%rsp), %esi
	addl	$1, %eax
	addl	%esi, %eax
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L306:
	leal	2(%r14), %edi
	xorl	%eax, %eax
	addl	$1, %r15d
	call	bill
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L307:
	leal	-3(%rbp), %edi
	xorl	%eax, %eax
	movl	%esi, 12(%rsp)
	call	bill
	movl	12(%rsp), %esi
	addl	$1, %esi
	addl	%esi, %eax
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L280:
	xorl	%eax, %eax
	jmp	.L267
	.p2align 4,,10
	.p2align 3
.L274:
	leal	(%r15,%rsi), %eax
	subl	$4, %r14d
	subl	$4, %ebx
	addl	%eax, %r13d
	jmp	.L279
.L281:
	xorl	%eax, %eax
	addl	%esi, %eax
	jmp	.L267
	.cfi_endproc
.LFE24:
	.size	such, .-such
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	epicfail
	.type	epicfail, @function
epicfail:
.LFB22:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	cmpl	$1, %edi
	jle	.L314
	cmpl	$2, %edi
	je	.L310
	testb	$1, %dil
	je	.L311
	movl	$2, %ecx
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L324:
	movl	%edi, %eax
	cltd
	idivl	%ecx
	testl	%edx, %edx
	je	.L311
.L312:
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jne	.L324
.L310:
	subl	$1, %edi
	xorl	%eax, %eax
	call	bill
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	addl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L311:
	.cfi_restore_state
	subl	$1, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	such
	.p2align 4,,10
	.p2align 3
.L314:
	.cfi_restore_state
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	epicfail, .-epicfail
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"%d\n"
	.section	.text.unlikely
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB27:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$13, %edi
	xorl	%eax, %eax
	call	epicfail
	movl	$.LC6, %edi
	movl	%eax, %esi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	jmp	printf
	.cfi_endproc
.LFE27:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
