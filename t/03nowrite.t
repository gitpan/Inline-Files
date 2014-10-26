use lib qw(./blib/lib ../blib/lib);
use strict;
use Test;

BEGIN {
    plan(tests => 2,
	 todo => [],
	 onfail => sub {},
	);
}

use Inline::Files;

{
    local $/;
    open FILE, $0;
    my $text = <FILE>;
    close FILE;
    ok($text =~ /__MYFILE__\nOld stuff\n$/);
}

{
    local $^W;
    open MYFILE, '>';
    print MYFILE "New stuff\n";
    close \*MYFILE;
}

{
    local $/;
    open FILE, $0;
    my $text = <FILE>;
    close FILE;
    skip(
         $> == 0 ? "Skip if run by superuser" : 0,
         $text !~ /__MYFILE__\nNew stuff\n$/
        );
}

__MYFILE__
Old stuff
