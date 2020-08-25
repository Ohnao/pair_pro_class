my $rank = 1;
my ($previous_times, $previous_rank) = (0, 0);
for my $title (sort { $seen{$b} <=> $seen{$a} } keys %seen ) {
   last if $seen{$title} <= 2;
   #last if $rank > 30;
   my $current_times = $seen{$title};
   my $current_rank  =
      $current_times == $previous_times ? $previous_rank : $rank;
   printf "%d位: (%d回) %s\n", $current_rank, $seen{$title}, $title;
   ($previous_times, $previous_rank) = ($current_times, $current_rank);
   $rank++;
}