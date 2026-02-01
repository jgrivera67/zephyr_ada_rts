/**
 * @file ada_app.h
 *
 * Ada app library interface to C code
 *
 * @author German Rivera
 */
#ifndef ADA_APP_H_
#define ADA_APP_H_

#if defined(__cplusplus)
extern "C"
{
#endif

/**
 * Ada secondary stack size in bytes
 */
#define ADA_SECONDARY_STACK_SIZE 1024u

void ada_appinit(void);

void hello_ada(void);

#if defined(__cplusplus)
}
#endif

#endif /* ADA_APP_H_ */
