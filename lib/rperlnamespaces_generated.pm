## no critic qw(Capitalization ProhibitMultiplePackages ProhibitReusedNames)  # SYSTEM DEFAULT 3: allow multiple & lower case package names
package    # hide from PAUSE indexing
    rperlnamespaces_generated;
use strict;
use warnings;
our $VERSION = 0.001_000;

## no critic qw(ProhibitParensWithBuiltins ProhibitNoisyQuotes)  # SYSTEM SPECIAL 3: allow auto-generated code

$rperlnamespaces_generated::CORE = undef;
$rperlnamespaces_generated::CORE = {
    '!'             => 1,
    'B::'           => 1,
    'CORE::'        => 1,
    'Carp::'        => 1,
    'DB::'          => 1,
    'Data::'        => 1,
    'DynaLoader::'  => 1,
    'ENV'           => 1,
    'ERRNO'         => 1,
    'English::'     => 1,
    'Errno::'       => 1,
    'Exporter::'    => 1,
    'INC'           => 1,
    'IO::'          => 1,
    'Internals::'   => 1,
    'OS_ERROR'      => 1,
    'PerlIO::'      => 1,
    'Regexp::'      => 1,
    'SIG'           => 1,
    'Scalar::'      => 1,
    'Tie::'         => 1,
    'UNIVERSAL::'   => 1,
    'XSLoader::'    => 1,
    'bytes::'       => 1,
    'constant::'    => 1,
    'main::'        => 1,
    'mro::'         => 1,
    'overload::'    => 1,
    'overloading::' => 1,
    're::'          => 1,
    'strict::'      => 1,
    'threads::'     => 1,
    'utf8::'        => 1,
    'vars::'        => 1,
    'version::'     => 1,
    'warnings::'    => 1
};

$rperlnamespaces_generated::RPERL_DEPS = undef;
$rperlnamespaces_generated::RPERL_DEPS = {
    'AutoLoader::'   => 1,
    'AutoSplit::'    => 1,
    'CPAN::'         => 1,
    'Class::'        => 1,
    'Clone::'        => 1,
    'Config::'       => 1,
    'Config_git::'   => 1,
    'Config_heavy::' => 1,
    'Cwd::'          => 1,
    'Devel::'        => 1,
    'Digest::'       => 1,
    'DirHandle::'    => 1,
    'Dos::'          => 1,
    'EPOC::'         => 1,
    'Email::'        => 1,
    'Encode::'       => 1,
    'Env::'          => 1,
    'Exception::'    => 1,
    'ExtUtils::'     => 1,
    'Fcntl::'        => 1,
    'File::'         => 1,
    'FileHandle::'   => 1,
    'Filter::'       => 1,
    'FindBin::'      => 1,
    'Getopt::'       => 1,
    'HTML::'         => 1,
    'I18N::'         => 1,
    'IPC::'          => 1,
    'Inline::'       => 1,
    'Lingua::'       => 1,
    'List::'         => 1,
    'Locale::'       => 1,
    'Log::'          => 1,
    'MIME::'         => 1,
    'Module::'       => 1,
    'POSIX::'        => 1,
    'PPI::'          => 1,
    'PPIx::'         => 1,
    'PadWalker::'    => 1,
    'Params::'       => 1,
    'Parse::'        => 1,
    'Path::'         => 1,
    'Perl::'         => 1,
    'Pod::'          => 1,
    'Readonly::'     => 1,
    'Role::'         => 1,
    'SelectSaver::'  => 1,
    'SelfLoader::'   => 1,
    'Socket::'       => 1,
    'Storable::'     => 1,
    'String::'       => 1,
    'Sub::'          => 1,
    'Symbol::'       => 1,
    'Term::'         => 1,
    'Test::'         => 1,
    'Text::'         => 1,
    'Time::'         => 1,
    'VMS::'          => 1,
    'Win32::'        => 1,
    '_charnames::'   => 1,
    'auto::'         => 1,
    'base::'         => 1,
    'bytes_heavy::'  => 1,
    'charnames::'    => 1,
    'deprecate::'    => 1,
    'feature::'      => 1,
    'fields::'       => 1,
    'if::'           => 1,
    'integer::'      => 1,
    'locale::'       => 1,
    'parent::'       => 1,
    'psSnake::'      => 1,
    're::'           => 1,
    'unicore::'      => 1,
    'utf8_heavy::'   => 1
};

$rperlnamespaces_generated::RPERL = undef;
$rperlnamespaces_generated::RPERL = {
    'RPerl::'                                 => 1,
    'array::'                                 => 1,
    'arrayref::'                              => 1,
    'arrayref_arrayref::'                     => 1,
    'arrayref_arrayref_arrayref::'            => 1,
    'arrayref_hashref::'                      => 1,
    'boolean::'                               => 1,
    'character::'                             => 1,
    'character_arrayref::'                    => 1,
    'character_hashref::'                     => 1,
    'coderef::'                               => 1,
    'constant_integer::'                      => 1,
    'constant_number::'                       => 1,
    'constant_sse_number_pair::'              => 1,
    'constant_unsigned_integer::'             => 1,
    'filehandleref::'                         => 1,
    'float::'                                 => 1,
    'float_arrayref::'                        => 1,
    'float_hashref::'                         => 1,
    'gmp_integer::'                           => 1,
    'hash::'                                  => 1,
    'hashref::'                               => 1,
    'hashref_arrayref::'                      => 1,
    'hashref_hashref::'                       => 1,
    'integer::'                               => 1,
    'integer_arrayref::'                      => 1,
    'integer_arrayref_arrayref::'             => 1,
    'integer_arrayref_arrayref_arrayref::'    => 1,
    'integer_hashref::'                       => 1,
    'integer_hashref_hashref::'               => 1,
    'method::'                                => 1,
    'number::'                                => 1,
    'number_arrayref::'                       => 1,
    'number_arrayref_arrayref::'              => 1,
    'number_arrayref_arrayref_arrayref::'     => 1,
    'number_hashref::'                        => 1,
    'number_hashref_hashref::'                => 1,
    'object::'                                => 1,
    'object_arrayref::'                       => 1,
    'object_hashref::'                        => 1,
    'ref::'                                   => 1,
    'rperl::'                                 => 1,
    'rperlgmp::'                              => 1,
    'rperlnames::'                            => 1,
    'rperlnamespaces::'                       => 1,
    'rperlnamespaces_generated::'             => 1,
    'rperloperations::'                       => 1,
    'rperlrules::'                            => 1,
    'rperlsse::'                              => 1,
    'rperltypes::'                            => 1,
    'scalartype::'                            => 1,
    'scalartype_arrayref::'                   => 1,
    'scalartype_arrayref_arrayref::'          => 1,
    'scalartype_arrayref_arrayref_arrayref::' => 1,
    'scalartype_hashref::'                    => 1,
    'scalartype_hashref_hashref::'            => 1,
    'sse_number_pair::'                       => 1,
    'string::'                                => 1,
    'string_arrayref::'                       => 1,
    'string_arrayref_arrayref::'              => 1,
    'string_arrayref_arrayref_arrayref::'     => 1,
    'string_hashref::'                        => 1,
    'string_hashref_hashref::'                => 1,
    'unknown::'                               => 1,
    'unsigned_integer::'                      => 1,
    'void::'                                  => 1
};

1;
