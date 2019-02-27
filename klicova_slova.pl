BEGIN
{
  print "######################################\n";
  print "######################################\n";
  print "######################################\n";
  print "######################################\n";
    local( $| ) = ( 1 );
    print "Dobrý den, vítejte v programu pro výpis klíčových slov z textu
uloženém v souboru text.txt. Instalační skript nejdříve zkontroluje,
zda máte nainstalované potřebné CPAN moduly a případně je
nainstaluje. Stiskněte <Enter> nebo <Return> pro pokračování: \n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
    my $resp = <STDIN>;
}
{
system("/bin/bash ./instalator_modulu.sh") == 0
or die "Skript nelze spustit";
}
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
{
    local( $| ) = ( 1 );
    print "Instalační skript ukončen. Pokud se během instalace vyskytly
problémy, nainstalujte prosím moduly manuálně dle přiloženého souboru
README.md. stiskněte <Enter> nebo <Return> pro pokračování: \n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
    my $resp = <STDIN>;
}
use Lingua::EN::Keywords;
use utf8;
my $file = "text.txt";
my $document = do {
    local $/ = undef;
    open my $fh, "<:encoding(UTF-8)", $file
        or die "could not open $file: $!";
    <$fh>;
};
{
    local( $| ) = ( 1 );
    print "Vstupní soubor text.txt se načetl v pořádku. Nyní program odfiltruje
ze zadaného textu stop slova a zobrazí filtrovaný text, ze kterého
vybere pět klíčových slov a seřadí je sestupně podle frekvence jejich
výskytu. Stiskněte <Enter> nebo <Return> pro pokračování: \n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
    my $resp = <STDIN>;
}
$document =~ s/[,]+//gui;
$document =~ s/[„]+//gui;
$document =~ s/[“]+//gui;
$document =~ s/[.]+//gui;
$document =~ s/[?]+//gui;
$document =~ s/[:]+//gui;
$document =~ s/[^A-Za-z]\ba\b//gui;
$document =~ s/[^A-Za-z]\baby\b//gui;
$document =~ s/[^A-Za-z]\bačkoli\b//gui;
$document =~ s/[^A-Za-z]\bahoj\b//gui;
$document =~ s/[^A-Za-z]\baj\b//gui;
$document =~ s/[^A-Za-z]\bale\b//gui;
$document =~ s/[^A-Za-z]\banebo\b//gui;
$document =~ s/[^A-Za-z]\bani\b//gui;
$document =~ s/[^A-Za-z]\baniž\b//gui;
$document =~ s/[^A-Za-z]\bano\b//gui;
$document =~ s/[^A-Za-z]\basi\b//gui;
$document =~ s/[^A-Za-z]\baspoň\b//gui;
$document =~ s/[^A-Za-z]\baz\b//gui;
$document =~ s/[^A-Za-z]\baž\b//gui;
$document =~ s/[^A-Za-z]\bběhem\b//gui;
$document =~ s/[^A-Za-z]\bbez\b//gui;
$document =~ s/[^A-Za-z]\bbeze\b//gui;
$document =~ s/[^A-Za-z]\bblízko\b//gui;
$document =~ s/[^A-Za-z]\bbohužel\b//gui;
$document =~ s/[^A-Za-z]\bbrzo\b//gui;
$document =~ s/[^A-Za-z]\bbude\b//gui;
$document =~ s/[^A-Za-z]\bbudem\b//gui;
$document =~ s/[^A-Za-z]\bbudeme\b//gui;
$document =~ s/[^A-Za-z]\bbudes\b//gui;
$document =~ s/[^A-Za-z]\bbudeš\b//gui;
$document =~ s/[^A-Za-z]\bbudete\b//gui;
$document =~ s/[^A-Za-z]\bbudou\b//gui;
$document =~ s/[^A-Za-z]\bbudu\b//gui;
$document =~ s/[^A-Za-z]\bby\b//gui;
$document =~ s/[^A-Za-z]\bbyl\b//gui;
$document =~ s/[^A-Za-z]\bbyla\b//gui;
$document =~ s/[^A-Za-z]\bbyli\b//gui;
$document =~ s/[^A-Za-z]\bbylo\b//gui;
$document =~ s/[^A-Za-z]\bbyly\b//gui;
$document =~ s/[^A-Za-z]\bbys\b//gui;
$document =~ s/[^A-Za-z]\bbyt\b//gui;
$document =~ s/[^A-Za-z]\bbýt\b//gui;
$document =~ s/[^A-Za-z]\bčau\b//gui;
$document =~ s/[^A-Za-z]\bchce\b//gui;
$document =~ s/[^A-Za-z]\bchceme\b//gui;
$document =~ s/[^A-Za-z]\bchceš\b//gui;
$document =~ s/[^A-Za-z]\bchcete\b//gui;
$document =~ s/[^A-Za-z]\bchci\b//gui;
$document =~ s/[^A-Za-z]\bchtějí\b//gui;
$document =~ s/[^A-Za-z]\bchtít\b//gui;
$document =~ s/[^A-Za-z]\bchut'\b//gui;
$document =~ s/[^A-Za-z]\bchuti\b//gui;
$document =~ s/[^A-Za-z]\bci\b//gui;
$document =~ s/[^A-Za-z]\bči\b//gui;
$document =~ s/[^A-Za-z]\bclanek\b//gui;
$document =~ s/[^A-Za-z]\bčlánek\b//gui;
$document =~ s/[^A-Za-z]\bclanku\b//gui;
$document =~ s/[^A-Za-z]\bčlánku\b//gui;
$document =~ s/[^A-Za-z]\bclanky\b//gui;
$document =~ s/[^A-Za-z]\bčlánky\b//gui;
$document =~ s/[^A-Za-z]\bco\b//gui;
$document =~ s/[^A-Za-z]\bcoz\b//gui;
$document =~ s/[^A-Za-z]\bcož\b//gui;
$document =~ s/[^A-Za-z]\bčtrnáct\b//gui;
$document =~ s/[^A-Za-z]\bčtyři\b//gui;
$document =~ s/[^A-Za-z]\bcz\b//gui;
$document =~ s/[^A-Za-z]\bdál\b//gui;
$document =~ s/[^A-Za-z]\bdále\b//gui;
$document =~ s/[^A-Za-z]\bdaleko\b//gui;
$document =~ s/[^A-Za-z]\bdalsi\b//gui;
$document =~ s/[^A-Za-z]\bdalší\b//gui;
$document =~ s/[^A-Za-z]\bděkovat\b//gui;
$document =~ s/[^A-Za-z]\bděkujeme\b//gui;
$document =~ s/[^A-Za-z]\bděkuji\b//gui;
$document =~ s/[^A-Za-z]\bden\b//gui;
$document =~ s/[^A-Za-z]\bdeset\b//gui;
$document =~ s/[^A-Za-z]\bdesign\b//gui;
$document =~ s/[^A-Za-z]\bdevatenáct\b//gui;
$document =~ s/[^A-Za-z]\bdevět\b//gui;
$document =~ s/[^A-Za-z]\bdnes\b//gui;
$document =~ s/[^A-Za-z]\bdo\b//gui;
$document =~ s/[^A-Za-z]\bdobrý\b//gui;
$document =~ s/[^A-Za-z]\bdocela\b//gui;
$document =~ s/[^A-Za-z]\bdva\b//gui;
$document =~ s/[^A-Za-z]\bdvacet\b//gui;
$document =~ s/[^A-Za-z]\bdvanáct\b//gui;
$document =~ s/[^A-Za-z]\bdvě\b//gui;
$document =~ s/[^A-Za-z]\bemail\b//gui;
$document =~ s/[^A-Za-z]\bho\b//gui;
$document =~ s/[^A-Za-z]\bhodně\b//gui;
$document =~ s/[^A-Za-z]\bi\b//gui;
$document =~ s/[^A-Za-z]\bjá\b//gui;
$document =~ s/[^A-Za-z]\bjak\b//gui;
$document =~ s/[^A-Za-z]\bjako\b//gui;
$document =~ s/[^A-Za-z]\bjde\b//gui;
$document =~ s/[^A-Za-z]\bje\b//gui;
$document =~ s/[^A-Za-z]\bjeden\b//gui;
$document =~ s/[^A-Za-z]\bjedenáct\b//gui;
$document =~ s/[^A-Za-z]\bjedna\b//gui;
$document =~ s/[^A-Za-z]\bjedno\b//gui;
$document =~ s/[^A-Za-z]\bjednou\b//gui;
$document =~ s/[^A-Za-z]\bjedou\b//gui;
$document =~ s/[^A-Za-z]\bjeho\b//gui;
$document =~ s/[^A-Za-z]\bjej\b//gui;
$document =~ s/[^A-Za-z]\bjeji\b//gui;
$document =~ s/[^A-Za-z]\bjejí\b//gui;
$document =~ s/[^A-Za-z]\bjejich\b//gui;
$document =~ s/[^A-Za-z]\bjemu\b//gui;
$document =~ s/[^A-Za-z]\bjen\b//gui;
$document =~ s/[^A-Za-z]\bjenom\b//gui;
$document =~ s/[^A-Za-z]\bjenž\b//gui;
$document =~ s/[^A-Za-z]\bjeste\b//gui;
$document =~ s/[^A-Za-z]\bještě\b//gui;
$document =~ s/[^A-Za-z]\bjestli\b//gui;
$document =~ s/[^A-Za-z]\bjestliže\b//gui;
$document =~ s/[^A-Za-z]\bji\b//gui;
$document =~ s/[^A-Za-z]\bjí\b//gui;
$document =~ s/[^A-Za-z]\bjich\b//gui;
$document =~ s/[^A-Za-z]\bjím\b//gui;
$document =~ s/[^A-Za-z]\bjimi\b//gui;
$document =~ s/[^A-Za-z]\bjinak\b//gui;
$document =~ s/[^A-Za-z]\bjine\b//gui;
$document =~ s/[^A-Za-z]\bjiné\b//gui;
$document =~ s/[^A-Za-z]\bjiz\b//gui;
$document =~ s/[^A-Za-z]\bjiž\b//gui;
$document =~ s/[^A-Za-z]\bjsem\b//gui;
$document =~ s/[^A-Za-z]\bjses\b//gui;
$document =~ s/[^A-Za-z]\bjseš\b//gui;
$document =~ s/[^A-Za-z]\bjsi\b//gui;
$document =~ s/[^A-Za-z]\bjsme\b//gui;
$document =~ s/[^A-Za-z]\bjsou\b//gui;
$document =~ s/[^A-Za-z]\bjste\b//gui;
$document =~ s/[^A-Za-z]\bjšte\b//gui;
$document =~ s/[^A-Za-z]\bk\b//gui;
$document =~ s/[^A-Za-z]\bkam\b//gui;
$document =~ s/[^A-Za-z]\bkaždý\b//gui;
$document =~ s/[^A-Za-z]\bkde\b//gui;
$document =~ s/[^A-Za-z]\bkdo\b//gui;
$document =~ s/[^A-Za-z]\bkdy\b//gui;
$document =~ s/[^A-Za-z]\bkdyz\b//gui;
$document =~ s/[^A-Za-z]\bkdyž\b//gui;
$document =~ s/[^A-Za-z]\bke\b//gui;
$document =~ s/[^A-Za-z]\bkolik\b//gui;
$document =~ s/[^A-Za-z]\bkromě\b//gui;
$document =~ s/[^A-Za-z]\bktera\b//gui;
$document =~ s/[^A-Za-z]\bkterá\b//gui;
$document =~ s/[^A-Za-z]\bktere\b//gui;
$document =~ s/[^A-Za-z]\bkteré\b//gui;
$document =~ s/[^A-Za-z]\bkteri\b//gui;
$document =~ s/[^A-Za-z]\bkteři\b//gui;
$document =~ s/[^A-Za-z]\bkteří\b//gui;
$document =~ s/[^A-Za-z]\bkterou\b//gui;
$document =~ s/[^A-Za-z]\bktery\b//gui;
$document =~ s/[^A-Za-z]\bkterý\b//gui;
$document =~ s/[^A-Za-z]\bku\b//gui;
$document =~ s/[^A-Za-z]\bkvůli\b//gui;
$document =~ s/[^A-Za-z]\bma\b//gui;
$document =~ s/[^A-Za-z]\bmá\b//gui;
$document =~ s/[^A-Za-z]\bmají\b//gui;
$document =~ s/[^A-Za-z]\bmálo\b//gui;
$document =~ s/[^A-Za-z]\bmám\b//gui;
$document =~ s/[^A-Za-z]\bmáme\b//gui;
$document =~ s/[^A-Za-z]\bmáš\b//gui;
$document =~ s/[^A-Za-z]\bmate\b//gui;
$document =~ s/[^A-Za-z]\bmáte\b//gui;
$document =~ s/[^A-Za-z]\bme\b//gui;
$document =~ s/[^A-Za-z]\bmé\b//gui;
$document =~ s/[^A-Za-z]\bmě\b//gui;
$document =~ s/[^A-Za-z]\bmezi\b//gui;
$document =~ s/[^A-Za-z]\bmi\b//gui;
$document =~ s/[^A-Za-z]\bmí\b//gui;
$document =~ s/[^A-Za-z]\bmit\b//gui;
$document =~ s/[^A-Za-z]\bmít\b//gui;
$document =~ s/[^A-Za-z]\bmně\b//gui;
$document =~ s/[^A-Za-z]\bmnou\b//gui;
$document =~ s/[^A-Za-z]\bmoc\b//gui;
$document =~ s/[^A-Za-z]\bmohl\b//gui;
$document =~ s/[^A-Za-z]\bmohou\b//gui;
$document =~ s/[^A-Za-z]\bmoje\b//gui;
$document =~ s/[^A-Za-z]\bmoji\b//gui;
$document =~ s/[^A-Za-z]\bmožná\b//gui;
$document =~ s/[^A-Za-z]\bmuj\b//gui;
$document =~ s/[^A-Za-z]\bmůj\b//gui;
$document =~ s/[^A-Za-z]\bmusí\b//gui;
$document =~ s/[^A-Za-z]\bmuze\b//gui;
$document =~ s/[^A-Za-z]\bmůže\b//gui;
$document =~ s/[^A-Za-z]\bmy\b//gui;
$document =~ s/[^A-Za-z]\bna\b//gui;
$document =~ s/[^A-Za-z]\bná\b//gui;
$document =~ s/[^A-Za-z]\bnad\b//gui;
$document =~ s/[^A-Za-z]\bnade\b//gui;
$document =~ s/[^A-Za-z]\bnam\b//gui;
$document =~ s/[^A-Za-z]\bnám\b//gui;
$document =~ s/[^A-Za-z]\bnámi\b//gui;
$document =~ s/[^A-Za-z]\bnapiste\b//gui;
$document =~ s/[^A-Za-z]\bnapište\b//gui;
$document =~ s/[^A-Za-z]\bnaproti\b//gui;
$document =~ s/[^A-Za-z]\bnas\b//gui;
$document =~ s/[^A-Za-z]\bnás\b//gui;
$document =~ s/[^A-Za-z]\bnáš\b//gui;
$document =~ s/[^A-Za-z]\bnaše\b//gui;
$document =~ s/[^A-Za-z]\bnasi\b//gui;
$document =~ s/[^A-Za-z]\bnaši\b//gui;
$document =~ s/[^A-Za-z]\bne\b//gui;
$document =~ s/[^A-Za-z]\bně\b//gui;
$document =~ s/[^A-Za-z]\bnebo\b//gui;
$document =~ s/[^A-Za-z]\bnebyl\b//gui;
$document =~ s/[^A-Za-z]\bnebyla\b//gui;
$document =~ s/[^A-Za-z]\bnebyli\b//gui;
$document =~ s/[^A-Za-z]\bnebyly\b//gui;
$document =~ s/[^A-Za-z]\bnechť\b//gui;
$document =~ s/[^A-Za-z]\bněco\b//gui;
$document =~ s/[^A-Za-z]\bnedělá\b//gui;
$document =~ s/[^A-Za-z]\bnedělají\b//gui;
$document =~ s/[^A-Za-z]\bnedělám\b//gui;
$document =~ s/[^A-Za-z]\bneděláme\b//gui;
$document =~ s/[^A-Za-z]\bneděláš\b//gui;
$document =~ s/[^A-Za-z]\bneděláte\b//gui;
$document =~ s/[^A-Za-z]\bnějak\b//gui;
$document =~ s/[^A-Za-z]\bnejsi\b//gui;
$document =~ s/[^A-Za-z]\bnejsou\b//gui;
$document =~ s/[^A-Za-z]\bněkde\b//gui;
$document =~ s/[^A-Za-z]\bněkdo\b//gui;
$document =~ s/[^A-Za-z]\bnemají\b//gui;
$document =~ s/[^A-Za-z]\bnemáme\b//gui;
$document =~ s/[^A-Za-z]\bnemáte\b//gui;
$document =~ s/[^A-Za-z]\bneměl\b//gui;
$document =~ s/[^A-Za-z]\bněmu\b//gui;
$document =~ s/[^A-Za-z]\bneni\b//gui;
$document =~ s/[^A-Za-z]\bnení\b//gui;
$document =~ s/[^A-Za-z]\bnestačí\b//gui;
$document =~ s/[^A-Za-z]\bnevadí\b//gui;
$document =~ s/[^A-Za-z]\bnez\b//gui;
$document =~ s/[^A-Za-z]\bnež\b//gui;
$document =~ s/[^A-Za-z]\bní\b//gui;
$document =~ s/[^A-Za-z]\bnic\b//gui;
$document =~ s/[^A-Za-z]\bnich\b//gui;
$document =~ s/[^A-Za-z]\bním\b//gui;
$document =~ s/[^A-Za-z]\bnimi\b//gui;
$document =~ s/[^A-Za-z]\bnove\b//gui;
$document =~ s/[^A-Za-z]\bnové\b//gui;
$document =~ s/[^A-Za-z]\bnovy\b//gui;
$document =~ s/[^A-Za-z]\bnový\b//gui;
$document =~ s/[^A-Za-z]\bnula\b//gui;
$document =~ s/[^A-Za-z]\bo\b//gui;
$document =~ s/[^A-Za-z]\bod\b//gui;
$document =~ s/[^A-Za-z]\bode\b//gui;
$document =~ s/[^A-Za-z]\bon\b//gui;
$document =~ s/[^A-Za-z]\bona\b//gui;
$document =~ s/[^A-Za-z]\boni\b//gui;
$document =~ s/[^A-Za-z]\bono\b//gui;
$document =~ s/[^A-Za-z]\bony\b//gui;
$document =~ s/[^A-Za-z]\bosm\b//gui;
$document =~ s/[^A-Za-z]\bosmnáct\b//gui;
$document =~ s/[^A-Za-z]\bpak\b//gui;
$document =~ s/[^A-Za-z]\bpatnáct\b//gui;
$document =~ s/[^A-Za-z]\bpět\b//gui;
$document =~ s/[^A-Za-z]\bpo\b//gui;
$document =~ s/[^A-Za-z]\bpod\b//gui;
$document =~ s/[^A-Za-z]\bpodle\b//gui;
$document =~ s/[^A-Za-z]\bpokud\b//gui;
$document =~ s/[^A-Za-z]\bpořád\b//gui;
$document =~ s/[^A-Za-z]\bpotom\b//gui;
$document =~ s/[^A-Za-z]\bpouze\b//gui;
$document =~ s/[^A-Za-z]\bpozdě\b//gui;
$document =~ s/[^A-Za-z]\bprave\b//gui;
$document =~ s/[^A-Za-z]\bpráve\b//gui;
$document =~ s/[^A-Za-z]\bpred\b//gui;
$document =~ s/[^A-Za-z]\bpřed\b//gui;
$document =~ s/[^A-Za-z]\bpřede\b//gui;
$document =~ s/[^A-Za-z]\bpres\b//gui;
$document =~ s/[^A-Za-z]\bpřes\b//gui;
$document =~ s/[^A-Za-z]\bpřese\b//gui;
$document =~ s/[^A-Za-z]\bpri\b//gui;
$document =~ s/[^A-Za-z]\bpři\b//gui;
$document =~ s/[^A-Za-z]\bpro\b//gui;
$document =~ s/[^A-Za-z]\bproc\b//gui;
$document =~ s/[^A-Za-z]\bproč\b//gui;
$document =~ s/[^A-Za-z]\bprosím\b//gui;
$document =~ s/[^A-Za-z]\bprostě\b//gui;
$document =~ s/[^A-Za-z]\bproti\b//gui;
$document =~ s/[^A-Za-z]\bproto\b//gui;
$document =~ s/[^A-Za-z]\bprotoze\b//gui;
$document =~ s/[^A-Za-z]\bprotože\b//gui;
$document =~ s/[^A-Za-z]\bprvni\b//gui;
$document =~ s/[^A-Za-z]\bprvní\b//gui;
$document =~ s/[^A-Za-z]\bpta\b//gui;
$document =~ s/[^A-Za-z]\bre\b//gui;
$document =~ s/[^A-Za-z]\brovně\b//gui;
$document =~ s/[^A-Za-z]\bs\b//gui;
$document =~ s/[^A-Za-z]\bse\b//gui;
$document =~ s/[^A-Za-z]\bsedm\b//gui;
$document =~ s/[^A-Za-z]\bsedmnáct\b//gui;
$document =~ s/[^A-Za-z]\bšest\b//gui;
$document =~ s/[^A-Za-z]\bšestnáct\b//gui;
$document =~ s/[^A-Za-z]\bsi\b//gui;
$document =~ s/[^A-Za-z]\bsice\b//gui;
$document =~ s/[^A-Za-z]\bskoro\b//gui;
$document =~ s/[^A-Za-z]\bsmějí\b//gui;
$document =~ s/[^A-Za-z]\bsmí\b//gui;
$document =~ s/[^A-Za-z]\bsnad\b//gui;
$document =~ s/[^A-Za-z]\bspolu\b//gui;
$document =~ s/[^A-Za-z]\bsta\b//gui;
$document =~ s/[^A-Za-z]\bsté\b//gui;
$document =~ s/[^A-Za-z]\bsto\b//gui;
$document =~ s/[^A-Za-z]\bstrana\b//gui;
$document =~ s/[^A-Za-z]\bsve\b//gui;
$document =~ s/[^A-Za-z]\bsvé\b//gui;
$document =~ s/[^A-Za-z]\bsvůj\b//gui;
$document =~ s/[^A-Za-z]\bsvych\b//gui;
$document =~ s/[^A-Za-z]\bsvých\b//gui;
$document =~ s/[^A-Za-z]\bsvym\b//gui;
$document =~ s/[^A-Za-z]\bsvým\b//gui;
$document =~ s/[^A-Za-z]\bsvymi\b//gui;
$document =~ s/[^A-Za-z]\bsvými\b//gui;
$document =~ s/[^A-Za-z]\bta\b//gui;
$document =~ s/[^A-Za-z]\btady\b//gui;
$document =~ s/[^A-Za-z]\btak\b//gui;
$document =~ s/[^A-Za-z]\btake\b//gui;
$document =~ s/[^A-Za-z]\btaké\b//gui;
$document =~ s/[^A-Za-z]\btakhle\b//gui;
$document =~ s/[^A-Za-z]\btaky\b//gui;
$document =~ s/[^A-Za-z]\btakze\b//gui;
$document =~ s/[^A-Za-z]\btakže\b//gui;
$document =~ s/[^A-Za-z]\btam\b//gui;
$document =~ s/[^A-Za-z]\btamhle\b//gui;
$document =~ s/[^A-Za-z]\btamhleto\b//gui;
$document =~ s/[^A-Za-z]\btamto\b//gui;
$document =~ s/[^A-Za-z]\btato\b//gui;
$document =~ s/[^A-Za-z]\bte\b//gui;
$document =~ s/[^A-Za-z]\btě\b//gui;
$document =~ s/[^A-Za-z]\btebe\b//gui;
$document =~ s/[^A-Za-z]\btebou\b//gui;
$document =~ s/[^A-Za-z]\bted'\b//gui;
$document =~ s/[^A-Za-z]\btedy\b//gui;
$document =~ s/[^A-Za-z]\btema\b//gui;
$document =~ s/[^A-Za-z]\btěma\b//gui;
$document =~ s/[^A-Za-z]\bten\b//gui;
$document =~ s/[^A-Za-z]\btento\b//gui;
$document =~ s/[^A-Za-z]\bteto\b//gui;
$document =~ s/[^A-Za-z]\btéto\b//gui;
$document =~ s/[^A-Za-z]\bti\b//gui;
$document =~ s/[^A-Za-z]\btim\b//gui;
$document =~ s/[^A-Za-z]\btím\b//gui;
$document =~ s/[^A-Za-z]\btimto\b//gui;
$document =~ s/[^A-Za-z]\btímto\b//gui;
$document =~ s/[^A-Za-z]\btipy\b//gui;
$document =~ s/[^A-Za-z]\btisíc\b//gui;
$document =~ s/[^A-Za-z]\btisíce\b//gui;
$document =~ s/[^A-Za-z]\bto\b//gui;
$document =~ s/[^A-Za-z]\btobě\b//gui;
$document =~ s/[^A-Za-z]\btohle\b//gui;
$document =~ s/[^A-Za-z]\btoho\b//gui;
$document =~ s/[^A-Za-z]\btohoto\b//gui;
$document =~ s/[^A-Za-z]\btom\b//gui;
$document =~ s/[^A-Za-z]\btomto\b//gui;
$document =~ s/[^A-Za-z]\btomuto\b//gui;
$document =~ s/[^A-Za-z]\btoto\b//gui;
$document =~ s/[^A-Za-z]\btřeba\b//gui;
$document =~ s/[^A-Za-z]\btři\b//gui;
$document =~ s/[^A-Za-z]\btřináct\b//gui;
$document =~ s/[^A-Za-z]\btrošku\b//gui;
$document =~ s/[^A-Za-z]\btu\b//gui;
$document =~ s/[^A-Za-z]\btuto\b//gui;
$document =~ s/[^A-Za-z]\btvá\b//gui;
$document =~ s/[^A-Za-z]\btvé\b//gui;
$document =~ s/[^A-Za-z]\btvoje\b//gui;
$document =~ s/[^A-Za-z]\btvůj\b//gui;
$document =~ s/[^A-Za-z]\bty\b//gui;
$document =~ s/[^A-Za-z]\btyto\b//gui;
$document =~ s/[^A-Za-z]\bu\b//gui;
$document =~ s/[^A-Za-z]\burčitě\b//gui;
$document =~ s/[^A-Za-z]\buz\b//gui;
$document =~ s/[^A-Za-z]\buž\b//gui;
$document =~ s/[^A-Za-z]\bv\b//gui;
$document =~ s/[^A-Za-z]\bvam\b//gui;
$document =~ s/[^A-Za-z]\bvám\b//gui;
$document =~ s/[^A-Za-z]\bvámi\b//gui;
$document =~ s/[^A-Za-z]\bvas\b//gui;
$document =~ s/[^A-Za-z]\bvás\b//gui;
$document =~ s/[^A-Za-z]\bváš\b//gui;
$document =~ s/[^A-Za-z]\bvase\b//gui;
$document =~ s/[^A-Za-z]\bvaše\b//gui;
$document =~ s/[^A-Za-z]\bvaši\b//gui;
$document =~ s/[^A-Za-z]\bve\b//gui;
$document =~ s/[^A-Za-z]\bvečer\b//gui;
$document =~ s/[^A-Za-z]\bvedle\b//gui;
$document =~ s/[^A-Za-z]\bvice\b//gui;
$document =~ s/[^A-Za-z]\bvíce\b//gui;
$document =~ s/[^A-Za-z]\bvlastně\b//gui;
$document =~ s/[^A-Za-z]\bvsak\b//gui;
$document =~ s/[^A-Za-z]\bvšak\b//gui;
$document =~ s/[^A-Za-z]\bvšechen\b//gui;
$document =~ s/[^A-Za-z]\bvšechno\b//gui;
$document =~ s/[^A-Za-z]\bvšichni\b//gui;
$document =~ s/[^A-Za-z]\bvůbec\b//gui;
$document =~ s/[^A-Za-z]\bvy\b//gui;
$document =~ s/[^A-Za-z]\bvždy\b//gui;
$document =~ s/[^A-Za-z]\bz\b//gui;
$document =~ s/[^A-Za-z]\bza\b//gui;
$document =~ s/[^A-Za-z]\bzač\b//gui;
$document =~ s/[^A-Za-z]\bzatímco\b//gui;
$document =~ s/[^A-Za-z]\bzda\b//gui;
$document =~ s/[^A-Za-z]\bzde\b//gui;
$document =~ s/[^A-Za-z]\bze\b//gui;
$document =~ s/[^A-Za-z]\bže\b//gui;
$document =~ s/[^A-Za-z]\bzpet\b//gui;
$document =~ s/[^A-Za-z]\bzpět\b//gui;
$document =~ s/[^A-Za-z]\bzpravy\b//gui;
$document =~ s/[^A-Za-z]\bzprávy\b//gui;
$document =~ s/[^A-Za-z]\bbych\b//gui;
$document =~ s/[^A-Za-z]\btomu\b//gui;
$document =~ s/[^A-Za-z]\bvelmi\b//gui;
$document =~ s/[^A-Za-z]\bdost\b//gui;
$document =~ s/[^A-Za-z]\btomu\b//gui;
$document =~ s/[^A-Za-z]\bteď\b//gui;
$document =~ s/[^A-Za-z]\brovněž\b//gui;
$document =~ s/[^A-Za-z]\bnicméně\b//gui;
$document =~ s/\b\w{1,2}\b//gui;



print "$document\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
{
    local( $| ) = ( 1 );
    print "Text byl úspěšně vyfiltrován od stop slov. Stiskněte <Enter>
nebo <Return> pro určení klíčových slov: \n";
    my $resp = <STDIN>;
    print "######################################\n";
    print "######################################\n";
    print "######################################\n";
    print "######################################\n";
}


print "\n";
print "\n";

my @keywords = keywords($document);

foreach (@keywords) {
binmode(STDOUT, ":utf8");
  print "$_\n";
  };

my $filename = 'klicovaslova.txt';
open(my $fh, '>:encoding(UTF-8)', $filename) or die "Could not open file '$filename' $!";

foreach (@keywords) {
binmode(STDOUT, ":utf8");
  print $fh "$_\n";
  };

close $fh;
print "\n";
print "\n";

{
    local( $| ) = ( 1 );
    print "Pět klíčových slov zobrazených výše jsou seřazeny podle frekvence
výskytu v zadaném textu. Výsledek byl také uložen do souboru
klicovaslova.txt, který najdete v této složce. Stiskněte <Enter> nebo
<Return> pro ukončení programu: \n";
    my $resp = <STDIN>;
}
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "################E N D#################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
print "######################################\n";
