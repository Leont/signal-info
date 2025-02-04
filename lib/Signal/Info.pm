package Signal::Info;

use strict;
use warnings;

use XSLoader;

XSLoader::load(__PACKAGE__, __PACKAGE__->VERSION);

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
