# [[[ HEADER ]]]
use RPerl;
package RPerl::Learning;
use strict;
use warnings;
our $VERSION = 0.002_000;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::CompileUnit::Module::Class);
use RPerl::CompileUnit::Module::Class;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(ProhibitUnreachableCode RequirePodSections RequirePodAtEnd) # DEVELOPER DEFAULT 1b: allow POD & unreachable or POD-commented code, must be after line 1

# [[[ OO PROPERTIES ]]]
our hashref $properties = {};

1;    # end of class

__END__

=head1 NAME

Learning RPerl
or
Let's Write Fast Perl!

Official Reference, User Manual, and Educational Documentation
Restricted Perl, The Optimizing Perl 5 Compiler


=head1 DEDICATION

    For Anna.


=head1 TABLE OF CONTENTS

    FOREWORD
    PREFACE
    CHAPTER 1:  INTRODUCTION
    CHAPTER 2:  SCALAR DATA
    CHAPTER 3:  LISTS & ARRAYS
    CHAPTER 4:  SUBROUTINES
    CHAPTER 5:  INPUT & OUTPUT
    CHAPTER 6:  HASHES
    CHAPTER 7:  REGULAR EXPRESSIONS
    CHAPTER 8:  REGULAR EXPRESSIONS MATCHING
    CHAPTER 9:  REGULAR EXPRESSIONS PROCESSING
    CHAPTER 10: CONTROL STRUCTURES
    CHAPTER 11: CLASSES, PACKAGES, MODULES, LIBRARIES
    CHAPTER 12: FILE TESTS
    CHAPTER 13: DIRECTORY OPERATIONS 
    CHAPTER 14: STRINGS & SORTING
    CHAPTER 15: SMART MATCHING & GIVEN-WHEN
    CHAPTER 16: PROCESS MANAGEMENT
    CHAPTER 17: SOME ADVANCED TECHNIQUES
    APPENDIX A: EXERCISE ANSWERS
    APPENDIX B: BEYOND THE ROADRUNNER
    APPENDIX C: RPERL GRAMMAR


=head1 FOREWORD

    [ INSERT FOREWORD CONTENT HERE ]


=head1 PREFACE

    why I wrote this book
    who I am
    defense / apology
    TPF grant
    history of book
    acknowledgements / thanks


=head1 CHAPTER 1: INTRODUCTION

=head2 Welcome to the Roadrunner Book!
    
    You are about to learn the basic concepts of writing software using the RPerl optimizing compiler for the Perl computer programming language.  With the skills gained by reading this book, you will be empowered to create new super-fast RPerl programs which can be intermixed with existing Perl software available on the Internet.

    This book is named and stylized for the animal mascot for RPerl, Roadie the Roadrunner.  RPerl, like Roadie, I<runs really fast>.
    
=head2 Learning Perl

    This book is purposefully patterned after the popular educational text U<Learning Perl>, affectionately known as the Llama Book.  Both the Roadrunner Book and the Llama book are meant as introductory texts on Perl topics.  The Llama Book is focused on normal (high-magic) Perl, and the Roadrunner Book is focused on optimized (low-magic) Perl.

    This book copies the same chapter topics as Learning Perl, but all content is re-written for RPerl.  Learning RPerl also copies the same exercise concepts as Learning Perl, but all solutions are re-written in RPerl.  Both books are canonical and may be used together in the classroom; the source code solutions are meant to be compared side-by-side as textbook examples of normal Perl versus optimized Perl.

    Please support the Perl community by purchasing a copy of Learning Perl from our friends at O'Reilly:
    
    L<http://shop.oreilly.com/product/0636920018452.do>

=head2 Is this book right for you?

    =over
    =item Are you totally new to computer programming, and you want to learn how to write your first program?
    =item Do you already know Perl, and now you want to make your Perl code run faster?
    =item Do you already know some other computer language, and Perl has always intrigued you?
    =item Do you love learning about new languages and compilers?
    =item Do you miss you favorite old language Perl, and you're looking for a legitimate reason to go back?
    =item Are you a scientist and you just want your code to run really fast without the headaches of C or C++?
    =back

    If you answered "yes" to any of these questions, then the Roadrunner Book is definitely for you!

    If you answered "no" to all of these questions, then this book may still be for you, give it a try!

    If you hate Perl, or only love slow software, or wish all computers would explode, then we suggest some soul-searching and a few Saint Larry videos.  You'll thank us in the morning.

=head2 Why aren't there more footnotes?

    This is a purposefully simple book, in the same way RPerl is a purposefully simple subset of the full Perl 5 programming language.

=head2 What about the exercises & their answers?

    There are one or more programming exercises at the end of every chapter, and full answers to each problem are given near the end of the book in Appendix A.
 
    For maximum educational effect, we suggest you attempt to write each piece of code on your own before looking at our solutions.

    If you are using this as an official textbook for certification or academic credit, such as at LAMPuniversity.org or a traditional school, you are obviously expected to write all your own code without refering to our or anyone else's solutions whatsoever.  We suggest you enclose Appendix A with a paperclip or discard it altogether to avoid the potential for accidental academic dishonesty.

=head2 What do those numbers at the start of the exercise mean?

    The original authors of Learning Perl meant the numbers at each exercise to indicate the approximate number of minutes required for an average person to reach a full working solution.  If it takes you less time, good for you!  If it takes you more time, don't worry, it's no big deal; learning technical skills requires time and dedication.  All experts were once novices.

=head2 What if I'm an RPerl course instructor?

    Thank you for helping spread the love of Perl and the speed of RPerl!

    As previously mentioned, this book may either be used solo or combined with Learning Perl.  For students who are not already familiar with Perl, you may wish to use this text alone in order to simplify and ease the learning experience.  For students who are already familiar with Perl or other dynamic programming languages like the snake or the red gemstone, you may wish to use both textbooks for a more in-depth compare-and-contrast approach.

=head2 What does RPerl stand for?

    RPerl stands for Restricted Perl, in that we restrict our use of Perl to those parts which can be made to run fast.  RPerl also stands for Revolutionary Perl, in that we hope RPerl's speed will revolutionize the software development industry, or at least the Perl community.  RPerl might even stand for Roadrunner Perl, in that it I<runs really fast>.

=head2 Why did Will create RPerl?

    Will loves Perl and the Perl community.

    Will is a scientist and needs his code to run really fast.

    Will doesn't like the hassle of writing code in C or C++ or XS or Inline::C or Inline::CPP.

    Will waited a decade or two before realizing he had to do it himself.

=head2 Why didn't Will just use normal Perl or some other language?

    Dynamic languages like Perl are fast at running some kinds of computational actions, such as string manipulation (editing text data) and reading from a database.
    
    Unfortunately, dynamic languages are slow at running general-purpose computations, such as arithmetic and moving data around in memory.  Sometimes very slow.
    
    Dynamic languages like Perl are also flexible, powerful, and relatively easy to learn.  Sometimes too flexible.
    
    RPerl's goal is to keep all of Perl's power and ease-of-use, while removing the redundant parts of Perl's flexibility in order to gain a major runtime speed boost.

    The most complex and flexible parts of Perl are called "high magic", so RPerl is focused on supporting the "low magic" parts of Perl which can be made to run fast.

=head2 Is RPerl easy or hard?

    RPerl is specifically designed to remove the confusing and complicated parts of Perl.

    RPerl also introduces a number of additional rules and templates which are not present in normal Perl, notably including the use of real data types.

    The net effect of removing Perl complexity and adding RPerl rules falls in favor of RPerl, due primarily to the exceedingly complex nature of Perl.

    In other words, RPerl is easier to learn and use than dynamic languages like normal Perl.

=head2 How did RPerl get to be so popular?

    The RPerl team has been regularly promoting RPerl in a number of physical and digital venues, including but not limited to:

    =over
    =item YAPC::NA  L<http://www.yapcna.org>
    =item Austin Perl Mongers  L<http://www.austin.pm>
    =item RPerl Website  L<http://www.rperl.org>
    =item Github  L<https://github.com/wbraswell/rperl>
    =item Facebook Page  L<https://www.facebook.com/rperlcompiler>
    =item Facebook Groups  L<https://www.facebook.com/groups/perlprogrammers>  L<https://www.facebook.com/groups/perlmonger>
    =item Twitter  L<https://twitter.com/rperlcompiler>
    =item PerlMonks  L<http://perlmonks.org>
    =item Perl Blogs  L<http://blogs.perl.org>
    =item IRC #perl11  L<http://irc.perl.org>
    =back

=head2 What is happening with RPerl now?

    As of Q4 2015, RPerl v1.2 (codename Andromeda) has been publicly released and is in use by a number of early adopters around the world.

    RPerl development is proceeding with financial support from both Kickstarter crowdfunding and official grant monies from The Perl Foundation.

    The RPerl community is beginning to grow, and there are a number of exciting RPerl projects currently in the works.  More info coming soon!

=head2 What is RPerl really good for?

    RPerl is a general-purpose programming language, which means you can use RPerl to efficiently and effectively implement virtually any kind of software you can imagine.

    RPerl is especially well-suited for building software which benefits from speed, such as scientific simulations and graphical video games.

    RPerl is also good for building software which utilizes Perl's strong-suit of string manipulation; RPerl currently supports basic string operators, with full regular expression support to be added in an upcoming version.

=head2 What is RPerl not good for?

    RPerl has purposefully disabled the most complex features of Perl, such as run-time code evaluation, secret operators, and punctuation variables.  If you have purposefully designed your Perl software to depend on these high-magic features, or you are unconditionally committed to continue using high-magic language features, then maybe RPerl isn't for you.

=head2 How can I get RPerl?

    Installing RPerl ranges from easy to difficult, depending on how well your operating system supports Perl and C++.
    
    On modern operating systems with good Perl support, such as Debian or Ubuntu GNU/Linux, you should be able to install RPerl system-wide by running the following command at your terminal command prompt:
    
    C<$ sudo cpan RPerl>

    If RPerl is properly installed, you should see a short text message displayed when you type the following command:

    C<$ rperl -v>

    On operating systems with less Perl support, you may have to perform a number of steps to successfully install RPerl, with dry technical detail available in the INSTALL notes document:
    
    L<https://github.com/wbraswell/rperl/blob/master/INSTALL>

    Unless you are an experienced programmer or system administrator, it is B<strongly> recommended you use the Xubuntu operating system.  You can download the Xubuntu ISO file at the link below, then use it to create a bootable DVD disc or USB flash drive, install Xubuntu onto any computer, and issue the C<$ sudo cpan RPerl> command as described above.

    L<http://xubuntu.org/getxubuntu>

    If you are interested in viewing the source code of RPerl itself, you may find the latest major release of RPerl (stable) on CPAN:

    L<https://metacpan.org/author/WBRASWELL>

    You may find the latest development release of RPerl (possibly unstable) on Github:

    L<https://github.com/wbraswell/rperl>

=head2 What is CPAN?

    CPAN is the Comprehensive Perl Archive Network, the world's most successful and mature centralized software network.

    CPAN servers are where most public Perl software is stored, including RPerl.

    L<https://en.wikipedia.org/wiki/CPAN>
 
    L<http://www.cpan.org>

    Several other programming language communities have copied the success and implementation of CPAN, including JSAN for Javascript, CRAN for R, and CCAN for C.

=head2 How can I get support for RPerl?

    Official RPerl technical support is provided through Auto-Parallel Technologies, Inc.
 
    To request more information, please send an e-mail to the following address:
 
    william DOT braswell AT autoparallel DOT com

=head2 Are there any other kinds of support?

    Free technical support for non-commercial users is provided by the RPerl community through IRC.

    IRC #perl11 L<http://irc.perl.org>

=head2 What if I find a bug in RPerl?

    The primary bug-tracking platform for RPerl is Github Issues, where you may file a new bug report ("new issue") if it is not already listed:

    L<https://github.com/wbraswell/rperl/issues>

    Although Github Issues is strongly preferred, the RPerl development team also supports the legacy CPAN ticket system:
 
    L<https://rt.cpan.org/Public/Dist/Display.html?Name=RPerl>

=head2 How do I make an RPerl program?

    Computer programs written using the RPerl language are plain text files, which means you can use any text editor to create and modify your RPerl source code.  Examples of common text editors include Notepad, Pico, and Vi.

    L<http://www.vim.org>

    To avoid possible file format problems, do not edit your RPerl programs using a word processor such as Wordpad, Word, OpenOffice, or LibreOffice.

    Experienced RPerl developers may choose to utilize an integrated development environment (IDE), which is a special text editor made for writing software.  Examples of common Perl IDE applications include Eclipse EPIC, Padre, and Komodo (non-free).

    L<http://www.epic-ide.org>

    L<http://padre.perlide.org>

    L<http://komodoide.com/perl>

=head2 A simple RPerl program

C<
#!/usr/bin/perl

# [[[ HEADER ]]]
use RPerl;
use strict;
use warnings;
our $VERSION = 0.001_000;

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(RequireInterpolationOfMetachars)  # USER DEFAULT 2: allow single-quoted control characters & sigils

# [[[ OPERATIONS ]]]
my number $foo = 21 + 12;
my number $bar = 23 * 42;
print 'have $foo = ' . $foo . "\n";
print 'have $bar = ' . $bar . "\n";
>

=head2 What's inside that RPerl program?

    This program is separated by blank lines into 4 sections: shebang, header, critics, and operations.  

    Other than the shebang and critics, all lines beginning with C<#> are comments and can be safely ignored or discarded without affecting the program.

    The "shebang" section is required and always contains exactly 1 line and is short for "hash bang", referring to the two leading characters C<#!> of this line.  The octothorpe character C<#> (tic-tac-toe symbol) is called a pound sign when used on a telephone, and is called a hash (or more recently "hash tag") when used on a computer.  The exclamation point character C<!> is called a bang when used on a computer.  When appearing together as the first two characters in a plain text file, the hash and bang characters tell the operating system to run the immediately-following command (in this case the Perl interpreter located at F</usr/bin/perl>) and pass the remaining contents of the text file as input to the command.  In other words, if the first line of a plain text file is C<#!/usr/bin/perl>, then that file is a Perl program.

    The header section is required and always contains 4 lines for an RPerl program file ending in F<.pl>, or 5 lines for an RPerl module ending in F<.pm> (covered later in Chapter 11).  The C<use> Perl keyword (AKA builtin operator) has 2 primary purposes: to load additional RPerl modules, and to enable RPerl "pragma" system configuration modes.  The C<use RPerl;> line is dual-purpose, it both loads the F<RPerl.pm> module and enables the special RPerl low-magic pragma.  The C<use strict;> and C<use warnings;> lines enable the most basic Perl pragmas which in turn require decent programming practices by the human programmers.  The C<our $VERSION = 0.001_000;> line sets the numeric version number of this RPerl program.

    The critics section is included as necessary and may contain 1 or more lines beginning with C<## no critic>, which disable the errors caused by the over-restrictive nature of some Perl::Critic policies.  There are currently 6 critics commands enabled for normal RPerl users, the first 2 of which are given in this example.  The C<USER DEFAULT 1> critic command allows the use of numeric values such as C<21> and C<12>, as well as the common C<print> command.  The C<USER DEFAULT 2> critic command allows the printing of C<'have $foo = '>, where a single-quoted C<'> string literal value contains the the C<$> dollar sigil (covered later in Chapter 2).

    The operations section is required and contains 1 or more lines of general-purpose RPerl source code.  This is the main body of your program.  The 4 lines of source code in our example are used to perform some simple arithmetic and display the results.  The C<my number $foo = 21 + 12;> line declares a new variable named C<$foo> which will only contain floating-point numeric data, and which is initialized to contain the arithmetic result of numeric literal values C<21> plus C<12>.  The C<my number $bar = 23 * 42;> line does much the same thing, creating a new numeric variable named C<$bar> and initialized with C<23> times C<42>.  The C<print 'have $foo = ' . $foo . "\n";> and C<print 'have $bar = ' . $bar . "\n";> lines will display on screen (not send to paper printer) the labeled values of C<$foo> and C<$bar> respectively.  The C<.> dot operator is string concatenation, used in this example to create one string out of 3 parts so there is only 1 argument parameter passed to the C<print> command.  The "n" in the C<"\n"> double-quoted string literal values stands for "newline", which inserts a carriage return to place the next piece of printed data down on the following line.

=head2 How do I compile RPerl?

    Normal Perl source code is executed using a software mechanism known as interpretation, which is to say that Perl is an interpreted language and the F</usr/bin/perl> command is called the Perl interpreter.  The primary alternative to interpretation is compilation, so RPerl is a compiled subset of the Perl language and the F</usr/bin/rperl> command is called the RPerl compiler.

    Like the Perl interpreter, the RPerl compiler accepts 2 different input file types: Perl programs which end in F<.pl> and Perl modules which end in F<.pm>.  Perl program files actually run and execute actions, optionally receiving some functionality from 1 or more Perl module files if specified.  Perl modules do not run or execute actions themselves, they only provide functionality which must in turn be called from a Perl program, or from another Perl module which eventually gets called by a Perl program.

    B<I<CURRENT RPERL LIMITATION: RPerl modules are supported in full compile mode, but RPerl programs are supported in test interpret mode only, to be updated in a forthcoming RPerl release.>>

    A list of all valid RPerl compiler options may be seen by issuing the C<$ rperl -?> command or following one of these links:

    L<rperl>
    L<https://metacpan.org/pod/distribution/RPerl/script/rperl>

    To partially-compile-then-execute the preceeding RPerl example program in test mode, you may copy and paste the entire program (from shebang to second print) into a temporary file such as F</tmp/foobar.pl>, then execute the following command:

    C<$ rperl -t /tmp/foobar.pl>

The output of this example program should be:

C<
have $foo = 33
have $bar = 966
>

    Please see chapter 11 for more information about compiling Perl modules.

=head2 A Whirlwind Tour of RPerl

=head3 Creator of RPerl, Will Braswell

    Will Braswell does more than just create Perl compiler software, he is also very active in several other areas of life, including but not limited to:

    =over
    =item Church & Spirituality
    =item Boy Scouts of America
    =item Cane Juggling & Circus Performance
    =item Linux Operating Systems
    =item Charitable & Fraternal Organizations
    =item Homeschooling & Higher Education
    =item Astrophysics & Mathematics
    =item Entrepreneuriship & Business
    =item High-Performance Computing
    =item Professional Space Exploration
    =item Family Life
    =back

    These areas of interest are reflected in the tone and intention of RPerl.

=head3 History of RPerl

    The RPerl project officially began as a New Year's Resolution on January 1st, 2013.  Following the grand tradition of Perl creator "Saint" Larry Wall, RPerl version releases are often timed to coincide with major holidays.

    After 1 year of work, RPerl v1.0beta1 was released on New Year's Day 2014, eventually followed by RPerl v1.0beta2 on Christmas 2014.

    The much-anticipated RPerl v1.0 full release was made on US Independence Day 2015, and RPerl v1.2 came on Halloween 2015.

    RPerl v1.3 is scheduled for release on Thanksgiving 2015, then RPerl v2.0beta1 on Christmas 2015, and so on.

    RPerl v1.0 was funded through a Kickstarter campaign, then RPerl v1.2 and v1.3 were funded through a second Kickstarter campaign.  Work on the first 6 chapters of this book was funded through a grant from The Perl Foundation.

=head3 Performance of RPerl

    The question of I<"How fast is RPerl?"> does not have one simple answer; instead there are several factors and configuration modes to be taken into consideration.  A relatively detailed description of the performance and modes may be found at the following link:

    L<http://rperl.org/performance_benchmarks.html>

    The most condensed answer is that I<"RPerl is really fast.">  Utilizing RPerl's fastest execution modes, we see performance very close to C++, which means RPerl is now among the short list of "world's fastest languages" along with C, C++, and Fortran.

=head3 Low-Magic Perl Commandments

    The high-magic (very complex) features of Perl are primarily responsible for how slow Perl runs for general-purpose computations.  The "R" in RPerl stands for "Restricted", in that we restrict ourselves to only use the low-magic features of Perl which can run really fast.

    The definitive list of do's and don'ts for high-magic vs low-magic Perl programming is called The Low Magic Perl Commandments (LMPC).  There are 64 total commandments split into 5 groups of Ideals, Magic, Data, Operations, and Object-Orientation.  The "Thou Shalt" commandments appear in the left column, and the "Thou Shalt Nots" appear on the right.

    L<http://rperl.org/the_low_magic_perl_commandments.html>

    The LMPC draw inspiration from, and (wherever possible) work together with Damian Conway's U<Perl Best Practices> and Jeffrey Thalhammer's Perl::Critic software.

    L<http://shop.oreilly.com/product/9780596001735.do>

    L<http://search.cpan.org/~thaljef/Perl-Critic/lib/Perl/Critic/PolicySummary.pod>

=head3 The Book of RPerl

    Perlism is the computer religion dedicated to the use, promotion, and development of the Perl family of programming languages.  (Not to be confused with a spiritual religion such as Christianity, a computer religion such as Perlism is an independent and complementary belief structure.)

    A Perlite is an adherent to the Perlism religion.  Perlism has a revered founder, Saint Larry (himself a devout Christian); a prophet, The Voice In The Wilderness (Will); a monastary and shrine, Perl Monks; commandments, The LMPC; and canonical scriptures, including Saint Larry's U<Apocalypses> and The Voice's U<Book of RPerl>.

    The book is a description of events surrounding the creation of RPerl and the future of the Internet.  It is intended to both educate and entertain.

    L<http://rperl.org/the_book_of_rperl.html>

=head2 Exercises

1.  Hello World
2.  RPerl Command
3.  Foo Bar Arithmetic


=head1 APPENDIX A: EXERCISE ANSWERS

    2a.  Complete source code of solutions to chapters 1 - 6
    2b.  Describe how to arrive at each solution


=head1 APPENDIX B: BEYOND THE ROADRUNNER

    The Scallion
    The Sword


=head1 APPENDIX C: RPERL GRAMMAR

    1a.  Describe Eyapp EBNF grammar format and Grammar.eyp file sections
    1b.  Describe lexical token types
    1c.  Describe operator precedence and associativity
    1d.  Describe all grammar rules and productions
    1e.  Provide examples of valid code


=head1 SEE ALSO

L<RPerl>
L<rperl>


=head1 AUTHOR

B<William N. Braswell, Jr.>

L<mailto:wbraswell@NOSPAM.cpan.org>

=cut