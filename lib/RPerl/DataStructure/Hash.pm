# [[[ HEADER ]]]
package RPerl::DataStructure::Hash;
use strict;
use warnings;
our $VERSION = 0.006_000;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::DataStructure);
use RPerl::DataStructure;

use Carp;

# [[[ SUB-TYPES BEFORE INCLUDES ]]]
use RPerl::DataStructure::Hash::SubTypes;

# [[[ INCLUDES ]]]
# for type-checking via SvIOKp(), SvNOKp(), and SvPOKp(); inside INIT to delay until after 'use MyConfig'
#INIT { RPerl::diag("in Hash.pm, loading C++ helper functions for type-checking...\n"); }
INIT {
    use RPerl::HelperFunctions_cpp;
    RPerl::HelperFunctions_cpp::cpp_load();
}

use RPerl::DataType::Void;
use RPerl::DataType::Boolean;
use RPerl::DataType::UnsignedInteger;
use RPerl::DataType::Integer;
use RPerl::DataType::Number;
use RPerl::DataType::Character;
use RPerl::DataType::String;
use RPerl::DataType::Scalar;
use RPerl::DataType::Unknown;
use RPerl::DataStructure::Array;

# [[[ EXPORTS ]]]
# DEV NOTE: avoid "Undefined subroutine &main::integer_to_string called"
use Exporter 'import';
our @EXPORT = ( @RPerl::DataType::Void::EXPORT, 
                @RPerl::DataType::Boolean::EXPORT, 
                @RPerl::DataType::UnsignedInteger::EXPORT, 
                @RPerl::DataType::Integer::EXPORT, 
                @RPerl::DataType::Number::EXPORT, 
                @RPerl::DataType::Character::EXPORT, 
                @RPerl::DataType::String::EXPORT, 
                @RPerl::DataType::Scalar::EXPORT, 
                @RPerl::DataType::Unknown::EXPORT, 
                @RPerl::DataStructure::Array::EXPORT);

# DEV NOTE, CORRELATION #rp018: RPerl::DataStructure::Array & Hash can not 'use RPerl;' so *__MODE_ID() subroutines are hard-coded here
package main;
use strict;
use warnings;
sub RPerl__DataStructure__Hash__MODE_ID { return 0; }

1;  # end of class
