use lib qw(./blib/lib ../blib/lib);
use strict;
use Test;
use diagnostics;

BEGIN {
    plan(tests => 12,
	 todo => [],
	 onfail => sub {},
	);
}

use Inline::Files;
use vars '%MYFILE';

{
    local $/;
    ok(!defined $MYFILE{file});
    ok(!defined $MYFILE{line});
    ok(!defined $MYFILE{offset});
    ok($MYFILE{writable});
    ok(!defined $MYFILE{other});
    open MYFILE;
    ok($MYFILE{file} =~ /07hash.t$/);
    ok($MYFILE{line} == 35);
    ok($MYFILE{offset} == 657);
    ok($MYFILE{writable});
    ok(!eval{ $MYFILE{writable}=0; 1 });
    ok(!defined $MYFILE{other});
    my $text = <MYFILE>;
    close MYFILE;
    ok($text =~ /Old stuff\n$/);
}

__MYFILE__
Old stuff
