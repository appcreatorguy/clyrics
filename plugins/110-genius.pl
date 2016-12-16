#
## genius.com support
#

use strict;
use warnings;

scalar {
    site => 'genius.com',
    code => sub {
        my ($content) = @_;

        if ($content =~ m{<lyrics\s+class="lyrics".*?>\s*(.*?)</lyrics>}si) {
            my $lyrics = $1;
            $lyrics =~ s{<.*?>}{}gs;
            return $lyrics;
        }

        return;
    }
  }
