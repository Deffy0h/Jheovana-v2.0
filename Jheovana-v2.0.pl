#!/usr/bin/perl
#jheovana.pl create by Deffy0h
#117:115:101:032:109:097:115:032:110:195:163:111:032:099:111:112:105:101

use Getopt::Long;

my $banner="
	   .-..-.                                         
	   : :: :                                         
	 _ : :: `-.  .--.  .--. .-..-. .--.  ,-.,-. .--.  
	: :; :: .. :' '_.'' .; :: `; :' .; ; : ,. :' .; ; 
	`.__.':_;:_;`.__.'`.__.'`.__.'`.__,_;:_;:_;`.__,_;
													  
	\t\t\tV2.0
	-================================================-
	\t\tCreate By Deffy0h
	-================================================-
	
	\t\t ANARCHY GHOST
	\t\t (ProtoWave meu pau)
	
	
	
";
my $mode="


	use: jheovana.pl
	
	--random (random passwords)
	--all    (unir as senhas ordernadamente)
		-> --nums  (WordList With numbers[0-9])
		-> --alpha (WordList With alpha[a-z])
		
	-m|mode  ('dog;fruts;money') keys words
	-mm|max  ('50') max password
	-l|len   (8) max length password
	-ml|mlen (1) minimo length password
	-s|save  ('wordlist.txt') file wordlist name
	
	
	\t\tCreate By Deffy0h
	\t\t ANARCHY GHOST
	\t\t (ProtoWave meu pau)
	
";

my $m;
my $max=50;
my $save;

my $lgn=8;
my $lgm=1;

my $all;
my $Enum;
my $alpha;
my $random;

GetOptions("m|mode=s"=>\$m,"s|save=s"=>\$save,"mm|max=i"=>\$max,"l|len=i"=>\$lgn,"ml|mlen=i"=>\$lgm,"all"=>\$all,"nums"=>\$Enum,"alpha"=>\$alpha,"random"=>\$random);

print <<ELOp;
		$banner
		$mode
		
ELOp


unless($m){
unless(!$random){
system("cls");
print $mode;
exit;
}
unless($all){
system("cls");
print $mode;
exit;
}else{
unless($Enum){
system("cls");
print $mode;
exit;
}
}
}

unless($save){
$save="wordlist.txt";
}

unless($max){
$max=16;
}

print "[+] FILE=> $save\n";
print "[+] MODE=> $m\n";
print "[+] MAX=> $max\n\n";

sleep(2);

chomp($m);
_calc();
sub _calc(){
print "\n";
print "[+] starting\n\n";

my @w=split /;/,$m;
my $bb=scalar(@w);
my $c=0;
my $rud;
my $red;
my $r;
my $wn;
my $ts;
my $arr;
my $tol;

unless(!$all){
unless(!$Enum){
my $num_counter=0;
my $INYR;
my $INYS;
for(my $i=0;$i<$lgn;$i++){
$INYR.="0";
$INYS.="9";
}
my $zeu;
my $bufEnum;
my $sBuf;
while($num_counter<($INYS+1)){
$zeu=substr($INYR,0,($lgn)-length($num_counter)).$num_counter."\n";
print $zeu;
$bufEnum.=$zeu;
if($sBuf>500){
open($a,">",$save);
$a->print($bufEnum);
$a->close;
$sBuf=0;
}
$sBuf++;
$num_counter++;
}
}
#unless(!$alpha){
#my $alp_counter=0;
#my @w_alpha=("a","b","c","d","e","f","g","h","i","j","l","m","n","o","p","q","r","s","t","u","v","y","k","x","z");
#my $UUIze;
#my $UUIzp;
#for(my $i=0;$i<$lgn;$i++){
#$UUIze.=@w_alpha[0];
#$UUIzp.=uc(@w_alpha[0]);
#}
#my ($zel,$zel_uc);
#while($alp_counter<(scalar(@w_alpha))){
#$zel=substr($UUIze,0,($lgn)-length($num_counter)).@w_alpha[$alp_counter];#."\n";
#$zel_uc=substr($UUIze,0,($lgn)-length($num_counter)).uc(@w_alpha[$alp_counter]);#."\n";
#print $zel."\n".$zel_uc."\n";
#$alp_counter++;
#}
#print "\n";
#}
}

unless(!$random){

while($ts<$bb){
$wn=@w[$ts];
for($arr=0;$arr<$bb;$arr++){
$ran=$wn.@w[$arr];
$ran=substr($ran,0,$lgn);
print $ran."\n";
$tol=$tol.$ran."\n";
}
$ran="";
$ts++;
$arr++
}

while($ii<$max){
while($c<$bb){
$rud=$rud.@w[int(rand($bb))];
$c++;
}
$rud=substr($rud,0,$lgn);
$c=0;
$clod=$clod.$rud."\n";
print $rud."\n";
if($save!~/.txt$/){
$save="wordlist.txt";
}
open($a,">",$save);
$a->print($tol);
$a->print($clod);
$a->close;
$rud="";
$ii=$ii+2;
}
ppp();
}
}

sub ppp(){
print "\n\nSAVED FILE $save WITH $max WORDS \n\n";
exit;
}

__END__

-=======================================================-
Skype: Deffy0h
Canal: https://www.youtube.com/channel/UC9kMfNPD3dgMO94JeFdTVBA
-=======================================================-
