/* auto-generated by gen_syscalls.py, don't edit */

#include <syscalls/kernel.h>

extern uint32_t z_vrfy_k_event_post(struct k_event * event, uint32_t events);
uintptr_t z_mrsh_k_event_post(uintptr_t arg0, uintptr_t arg1, uintptr_t arg2,
		uintptr_t arg3, uintptr_t arg4, uintptr_t arg5, void *ssf)
{
	_current->syscall_frame = ssf;
	(void) arg2;	/* unused */
	(void) arg3;	/* unused */
	(void) arg4;	/* unused */
	(void) arg5;	/* unused */
	union { uintptr_t x; struct k_event * val; } parm0;
	parm0.x = arg0;
	union { uintptr_t x; uint32_t val; } parm1;
	parm1.x = arg1;
	uint32_t ret = z_vrfy_k_event_post(parm0.val, parm1.val);
	_current->syscall_frame = NULL;
	return (uintptr_t) ret;
}

