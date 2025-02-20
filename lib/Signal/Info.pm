package Signal::Info;

use strict;
use warnings;

use XSLoader;

XSLoader::load(__PACKAGE__, __PACKAGE__->VERSION);

use Exporter 'import';
# @EXPORT_OK is filled in XS

1;

# ABSTRACT: A wrapper around siginfo_t

=head1 DESCRIPTION

This class represents a POSIX C<siginfo_t> structure. It is typically not created by an end-user, but returned by (XS) modules.

=method new

This creates a new (empty) siginfo object.

=method signo

The signal number.

=method code

The signal code.

=method errno

If non-zero, an errno value associated with this signal.

=method pid

Sending process ID.

=method uid

Real user ID of sending process.

=method status

Exit value or signal.

=method band

Band event for SIGPOLL.

=method value

Signal integer value.

=method ptr

Signal pointer value (as an unsigned)

=method addr

Address of faulting instruction.

=method fd

File descriptor associated with the signal. This may not be available everywhere.

=method timerid

Timer ID of POSIX real-time timers. This may not be available everywhere.

=method overrun

Timer overrun count of POSIX real-time timers. This may not be available everywhere.

=head1 CODE FLAGS

The following constants are defined for the C<code> field, all having their L<POSIX|https://pubs.opengroup.org/onlinepubs/009695399/basedefs/signal.h.html> meanings. Some may not be defined on all platforms.

=over 4

=item * C<ILL_ILLOPC>

=item * C<ILL_ILLOPN>

=item * C<ILL_ILLADR>

=item * C<ILL_ILLTRP>

=item * C<ILL_PRVOPC>

=item * C<ILL_PRVREG>

=item * C<ILL_COPROC>

=item * C<ILL_BADSTK>

=item * C<FPE_INTDIV>

=item * C<FPE_INTOVF>

=item * C<FPE_FLTDIV>

=item * C<FPE_FLTOVF>

=item * C<FPE_FLTUND>

=item * C<FPE_FLTRES>

=item * C<FPE_FLTINV>

=item * C<FPE_FLTSUB>

=item * C<SEGV_MAPERR>

=item * C<SEGV_ACCERR>

=item * C<BUS_ADRALN>

=item * C<BUS_ADRERR>

=item * C<BUS_OBJERR>

=item * C<TRAP_BRKPT> (conditionally defined)

=item * C<TRAP_TRACE> (conditionally defined)

=item * C<CLD_EXITED>

=item * C<CLD_KILLED>

=item * C<CLD_DUMPED>

=item * C<CLD_TRAPPED>

=item * C<CLD_STOPPED>

=item * C<CLD_CONTINUED>

=item * C<POLL_IN> (conditionally defined)

=item * C<POLL_OUT> (conditionally defined)

=item * C<POLL_MSG> (conditionally defined)

=item * C<POLL_ERR> (conditionally defined)

=item * C<POLL_PRI> (conditionally defined)

=item * C<POLL_HUP> (conditionally defined)

=item * C<SI_USER>

=item * C<SI_QUEUE>

=item * C<SI_TIMER>

=item * C<SI_ASYNCIO>

=item * C<SI_MESGQ>

=back
