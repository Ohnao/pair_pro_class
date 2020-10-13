#!/usr/bin/env perl
# convert-t2rb.pl - Perl Test::More の *.t から Ruby minitest の *.rb を生成
# 今回の課題で作成された簡素な *.t のみを対象としているので汎用性は全然ありません

use v5.14;

my $file_t = shift || 't/year_converter_basic.t';

if ( !-f $file_t ) {
    die "Usage:\n  $0 t/year_converter_basic.t > t/year_converter_basic.rb\n";
}

my $test_name_prefix = "test_yc";
my $test_counter     = 1;
my $test_contents    = "";

open my $fh, '<', $file_t or die $!;
while (<$fh>) {
    next unless /^(?:#|is |ok )/;
    chomp;
    if ( /^#+\s*.*/ ) {
        $test_contents .= $_ . "\n";
    } elsif ( /^is / ) {
        my ($arg, $expected, $desc) =
            /^is +guess_ad_year\("(.+?)"\), *(\d+), *"(.+?)"/ or die ">>> $_";
        $test_contents .= "def ${test_name_prefix}_" . $test_counter++ . "\n";
        $test_contents .= qq{  assert_equal \@yc.guess_ad_year("$arg"), $expected, "$desc"\n};
        $test_contents .= "end\n";
    } elsif ( /^ok / ) {
        my ($arg, $desc) =
            /^ok !guess_ad_year\("(.+?)"\), *"(.+?)"/ or die ">>> $_";
        $test_contents .= "def ${test_name_prefix}_" . $test_counter++ . "\n";
        $test_contents .= qq{  assert !\@yc.guess_ad_year("$arg"), "$desc"\n};
        $test_contents .= "end\n";
    }
}
close $fh;

$test_contents =~ s/^/  /mg;
chomp $test_contents;

print <<EOF
\$LOAD_PATH.push('lib')
require 'minitest/autorun'
require 'year_converter'
class YearConverterTest < Minitest::Test
  def setup
    \@yc = YearConverter.new
  end
${test_contents}
end
EOF

