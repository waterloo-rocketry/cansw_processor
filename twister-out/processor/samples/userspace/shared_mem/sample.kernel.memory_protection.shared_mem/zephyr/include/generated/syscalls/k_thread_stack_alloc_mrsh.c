/* auto-generated by gen_syscalls.py, don't edit */

#include <syscalls/kernel.h>

extern k_thread_stack_t * z_vrfy_k_thread_stack_alloc(size_t size, int flags);
uintptr_t z_mrsh_k_thread_stack_alloc(uintptr_t arg0, uintptr_t arg1, uintptr_t arg2,
		uintptr_t arg3, uintptr_t arg4, uintptr_t arg5, void *ssf)
{
	_current->syscall_frame = ssf;
	(void) arg2;	/* unused */
	(void) arg3;	/* unused */
	(void) arg4;	/* unused */
	(void) arg5;	/* unused */
	union { uintptr_t x; size_t val; } parm0;
	parm0.x = arg0;
	union { uintptr_t x; int val; } parm1;
	parm1.x = arg1;
	k_thread_stack_t * ret = z_vrfy_k_thread_stack_alloc(parm0.val, parm1.val);
	_current->syscall_frame = NULL;
	return (uintptr_t) ret;
}
