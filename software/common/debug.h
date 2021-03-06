#ifndef DEBUG_H
#define DEBUG_H

/**
 * @file debug.h
 * @author Lucas Martins Mendes
 * @brief debug macros
 */

#define DEBUG_OUTPUT_F alt_printf
#define DEBUG_OUTPUT alt_putstr

#define DEBUG(msg) 						\
	DEBUG_OUTPUT(msg);					\
	DEBUG_OUTPUT("\n")

#define DEBUGF(msg,...)               \
	DEBUG_OUTPUT_F(msg, __VA_ARGS__ );	\
	DEBUG_OUTPUT("\n")

#define DEBUG_NUM(str,number)  		\
	DEBUG_OUTPUT(str);              \
	print_num(number);             	\
	DEBUG_OUTPUT("\n")

#define VAR_DUMP(var,fmt)         		\
	DEBUG_OUTPUT_F(#var":"fmt,var);   	\
	DEBUG_OUTPUT("\n");

#define VAR_DUMPN(var)                          \
  DEBUG_OUTPUT(#var":");                           \
  print_num(var);                               \
  DEBUG_OUTPUT("\n");

#define _STR(x) #x

#define STR(x) _STR(x)


#define ASSERT(cond)                                            \
  if(!(cond))                                                   \
    {                                                           \
    }                                                           \
  else                                                          \
    {                                                           \
      DEBUG_OUTPUT("error: \""STR(cond)"\" at "STR(__LINE__));  \
    }

#define ASSERT_ERROR(cond,do_err)                             \
  if(!(cond))                                                 \
    {                                                         \
    }                                                         \
  else                                                        \
    {                                                         \
      DEBUG_OUTPUT("error:\""STR(cond)"\" at "STR(__LINE__)); \
      do_err;                                                 \
    }


#endif
