#!/bin/sh
eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
echo 'eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`' >> ~/.profile
echo 'export MANPATH=$HOME/perl5/man:$MANPATH' >> ~/.profile
perl -MCPAN -e shell <<END_OF_CPAN_COMMANDS
install local::lib
END_OF_CPAN_COMMANDS
echo "################################"
perl -MCPAN -Mlocal::lib -e 'CPAN::install(LWP)'
echo "################################"
perl -MCPAN -e shell<<END_OF_CPAN_COMMANDS
install Lingua::EN::Keywords
END_OF_CPAN_COMMANDS
echo "################################"
