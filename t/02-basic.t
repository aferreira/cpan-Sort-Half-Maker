
use Test::More tests => 7;

use_ok('Sort::Half::Maker', qw(make_halfsort));

{

my $sub = make_halfsort( 
              pre => [ qw(x y z) ]
    );
ok(defined $sub, "defined return");
isa_ok($sub, 'CODE');

my @list = sort $sub qw(a y c x z b);
is_deeply(\@list, [ qw(x y z a b c) ]);
}

{
my $sub = make_halfsort( 
              pre => [ qw(x y z) ],
              post => [ qw(a b c) ],
);
ok(defined $sub, "defined return");
isa_ok($sub, 'CODE');

my @list = sort $sub qw(a y f h w z b t x);
is_deeply(\@list, [ qw(x y z f h t w a b) ]);
}