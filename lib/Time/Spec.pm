package Time::Spec;

use strict;
use warnings;

use Signal::Info;

1;

# ABSTRACT: a wrapper arount struct timespec

=head1 SYNOPSIS

 my $spec = Time::Spec->new(1.5);
 my_sleeper($spec);
 say $spec->to_float;

=head1 DESCRIPTION

This holds a time specification, broken down into seconds and nanoseconds. This is typically used by XS modules and not by pure-perl ones.

=method new($fractional)

This creates a new C<Time::Spec> object from a fractional amount of time.

=method sec()

This returns the number of whole seconds.

=method nsec()

This returns the fractional part of the time specification in nanoseconds.

=method to_float()

Convert the time back into fractional seconds.
