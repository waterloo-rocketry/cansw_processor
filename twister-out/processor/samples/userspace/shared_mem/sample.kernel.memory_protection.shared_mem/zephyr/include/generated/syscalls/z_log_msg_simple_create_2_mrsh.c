/* auto-generated by gen_syscalls.py, don't edit */

#include <syscalls/log_msg.h>

extern void z_vrfy_z_log_msg_simple_create_2(const void * source, uint32_t level, const char * fmt, uint32_t arg0, uint32_t arg1);
uintptr_t z_mrsh_z_log_msg_simple_create_2(uintptr_t arg0, uintptr_t arg1, uintptr_t arg2,
		uintptr_t arg3, uintptr_t arg4, uintptr_t arg5, void *ssf)
{
	_current->syscall_frame = ssf;
	(void) arg5;	/* unused */
	union { uintptr_t x; const void * val; } parm0;
	parm0.x = arg0;
	union { uintptr_t x; uint32_t val; } parm1;
	parm1.x = arg1;
	union { uintptr_t x; const char * val; } parm2;
	parm2.x = arg2;
	union { uintptr_t x; uint32_t val; } parm3;
	parm3.x = arg3;
	union { uintptr_t x; uint32_t val; } parm4;
	parm4.x = arg4;
	z_vrfy_z_log_msg_simple_create_2(parm0.val, parm1.val, parm2.val, parm3.val, parm4.val);
	_current->syscall_frame = NULL;
	return 0;
}

