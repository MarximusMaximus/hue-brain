#!/usr/bin/env sh
# shellcheck disable=SC2034

################################################################################
#region Return Codes

RET_SUCCESS=0
RET_ERROR_UNKNOWN=1

# Local Errors 2-63 (61)
# define these in individual scripts


# Local Warnings 64-127 (63)
# define these in individual scripts


# Global Errors 128-191 (63, but 16 are pre-reserved, so really 47)
RET_ERROR_UNKNOWN_128=128
RET_ERROR_SIGHUP=129  # SIGHUP  1
RET_ERROR_SIGINT=130  # SIGINT  2
RET_ERROR_SIGQUIT=131 # SIGQUIT 3
RET_ERROR_SIGILL=132  # SIGILL  4
RET_ERROR_SIGTRAP=133 # SIGTRAP 5
RET_ERROR_SIGABRT=134 # SIGABRT 6
RET_ERROR_SIG135=135  # Not used, might be SIGBUS (linux) or SIGEMT (macOS)
RET_ERROR_SIGFPE=136  # SIGFPE  8
RET_ERROR_SIGKILL=137 # SIGKILL 9
RET_ERROR_SIG138=138  # Not used, might be SIGUSR1 (linux) or SIGBUS (macOS)
RET_ERROR_SIGSEGV=139 # SIGSEGV 11
RET_ERROR_SIG140=140  # Not used, might be SIGUSR2 (linux) or SIGSYS (macOS)
RET_ERROR_SIGPIPE=141 # SIGPIPE 13
RET_ERROR_SIGALRM=142 # SIGALRM 14
RET_ERROR_SIGTERM=143 # SIGTERM 15
# Signals above 16 are less commonly seen, 
# listed here for informational purposes:
# Linux:            macOS:
# SIGCHLD   17      SIGURG    16
# SIGCONT   18      SIGSTOP   17
# SIGSTOP   19      SIGTSTP   18
# SIGTSTP   20      SIGCONT   19
# SIGTTIN   21      SIGCHLD   20
# SIGTTOU   22      SIGTTIN   21
# SIGURG    23      SIGTTOU   22
# SIGXCPU   24      SIGIO     23
# SIGXFSZ   25      SIGXCPU   24
# SIGVTALRM 26      SIGXFSZ   25
# SIGPROF   27      SIGVTALRM 26
# SIGWINCH  28      SIGPROF   27
# SIGIO     29      SIGWINCH  28
# SIGPWR    30      SIGINFO   29
# SIGSYS    31      SIGUSR1   30
# SIGRTMIN  34      SIGUSR2   31
RET_ERROR_CONDA_ACTIVATE_FAILED=144
RET_ERROR_CONDA_INSTALL_FAILED=145
RET_ERROR_PIP_INSTALL_FAILED=146
RET_ERROR_CONDA_DEACTIVATE_FAILED=147
RET_ERROR_PIP_UNINSTALL_FAILED=148
RET_ERROR_SCRIPT_WAS_SOURCED=149
RET_ERROR_USER_IS_ROOT=150
RET_ERROR_SCRIPT_WAS_NOT_SOURCED=151
RET_ERROR_USER_IS_NOT_ROOT=152
RET_ERROR_DIRECTORY_NOT_FOUND=153
RET_ERROR_FILE_NOT_FOUND=154
RET_ERROR_FILE_COULD_NOT_BE_ACCESSED=155


# Global Warnings 192-254 (62, but 1 reserved, so really 61)
RET_WARNING_UNKNOWN=192



# Reserved b/c shell weirdness
RET_ERROR_UNKNOWN_255=255
RET_ERROR_UNKNOWN_NEG1=-1

#endregion Return Codes
################################################################################




################################################################################
#region Calculated "Constants"

CONDA_BASE_DIR_FULLPATH="$(dirname "$(dirname "${CONDA_EXE}")")"

#endregion Calculated "Constants"
################################################################################
