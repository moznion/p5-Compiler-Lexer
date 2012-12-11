use strict;
use warnings;
use Data::Dumper;
use Test::More tests => 1;
BEGIN { use_ok('Compiler::Lexer') };

my $name = $0;
#use modules tests
print Dumper Lexer::get_used_modules($name, <<'SCRIPT');
use Test::Module;
my $hash = { use => "value" };
$hash->{use};
my $a = Test::Module->new();
$a->use(\@args);
SCRIPT
