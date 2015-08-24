# [[[ HEADER ]]]
package RPerl::Operation::Statement::VariableDeclaration;
use strict;
use warnings;
use RPerl::AfterSubclass;
our $VERSION = 0.003_100;

# [[[ OO INHERITANCE ]]]
use parent qw(RPerl::Operation::Statement);

# [[[ CRITICS ]]]
## no critic qw(ProhibitUselessNoCritic ProhibitMagicNumbers RequireCheckedSyscalls)  # USER DEFAULT 1: allow numeric values & print operator
## no critic qw(RequireInterpolationOfMetachars)  # USER DEFAULT 2: allow single-quoted control characters & sigils

# [[[ OO PROPERTIES ]]]
our hashref $properties = {};

# [[[ OO METHODS & SUBROUTINES ]]]

our string_hashref::method $ast_to_rperl__generate = sub {
    ( my object $self, my string_hashref $modes) = @_;
    my string_hashref $rperl_source_group = { PMC => q{} };
    my string_hashref $rperl_source_subgroup;
    my string $self_class = ref $self;

    #    RPerl::diag( 'in VariableDeclaration->ast_to_rperl__generate(), received $self = ' . "\n" . RPerl::Parser::rperl_ast__dump($self) . "\n" );

    # unwrap VariableDeclaration_178, VariableDeclaration_179, VariableDeclaration_180, and VariableDeclaration_181 from Statement_153
    if ( $self_class eq 'Statement_153' ) {    # Statement -> VariableDeclaration
        $self       = $self->{children}->[0];
        $self_class = ref $self;
    }

    if ( $self_class eq 'VariableDeclaration_178' ) {    # VariableDeclaration -> MY Type VARIABLE_SYMBOL ';'
        my string $my        = $self->{children}->[0];
        my string $type      = $self->{children}->[1]->{children}->[0];
        my string $symbol    = $self->{children}->[2];
        my string $semicolon = $self->{children}->[3];
        $rperl_source_group->{PMC} .= $my . q{ } . $type . q{ } . $symbol . $semicolon . "\n";
    }
    elsif ( $self_class eq 'VariableDeclaration_179' ) {    # VariableDeclaration -> MY Type VARIABLE_SYMBOL OP19_VARIABLE_ASSIGN SubExpressionOrStdin ';'
        my string $my                     = $self->{children}->[0];
        my string $type                   = $self->{children}->[1]->{children}->[0];
        my string $symbol                 = $self->{children}->[2];
        my string $assign                 = $self->{children}->[3];
        my object $subexpression_or_stdin = $self->{children}->[4];
        my string $semicolon              = $self->{children}->[5];

        if (    ( exists $subexpression_or_stdin->{children}->[0]->{children}->[0] )
            and
            ( $subexpression_or_stdin->{children}->[0]->{children}->[0]->isa('RPerl::Operation::Expression::SubroutineCall::MethodCall::ConstructorCall') ) )
        {
            my string $constructor_type = $subexpression_or_stdin->{children}->[0]->{children}->[0]->{children}->[0]->{children}->[0];
            if ( $type ne $constructor_type ) {
                die RPerl::Parser::rperl_rule__replace( 'ERROR ECVGEASRP16, CODE GENERATOR, ABSTRACT SYNTAX TO RPERL: data type mismatch, '
                         . q{'} . $type . q{'}
                        . ' type is different than ' . q{'} . $constructor_type . q{'} . ' constructor type, dying' )
                    . "\n";
            }
        }

        $rperl_source_group->{PMC} .= $my . q{ } . $type . q{ } . $symbol . q{ } . $assign;
        $rperl_source_subgroup = $subexpression_or_stdin->ast_to_rperl__generate($modes);
        RPerl::Generator::source_group_append( $rperl_source_group, $rperl_source_subgroup );
        $rperl_source_group->{PMC} .= $semicolon . "\n";
    }
    elsif ( $self_class eq 'VariableDeclaration_180' ) { # VariableDeclaration -> MY Type VARIABLE_SYMBOL OP02_ARRAY_THINARROW SubExpression ']' OP19_VARIABLE_ASSIGN 'undef' ';'
        my string $my                 = $self->{children}->[0];
        my string $type               = $self->{children}->[1]->{children}->[0];
        my string $symbol             = $self->{children}->[2];
        my string $arrow_left_bracket = $self->{children}->[3];
        my object $subexpression      = $self->{children}->[4];
        my string $right_bracket      = $self->{children}->[5];
        my string $assign             = $self->{children}->[6];
        my string $undef              = $self->{children}->[7];
        my string $semicolon          = $self->{children}->[8];

        $rperl_source_group->{PMC} .= $my . q{ } . $type . q{ } . $symbol . $arrow_left_bracket . q{ };
        $rperl_source_subgroup = $subexpression->ast_to_rperl__generate($modes);
        RPerl::Generator::source_group_append( $rperl_source_group, $rperl_source_subgroup );
        $rperl_source_group->{PMC} .= q{ } . $right_bracket . q{ } . $assign . q{ } . $undef . $semicolon . "\n";
    }
    elsif ( $self_class eq 'VariableDeclaration_181' ) {    # VariableDeclaration -> MY TYPE_FHREF FHREF_SYMBOL ';'
        my string $my           = $self->{children}->[0];
        my string $type_fhref   = $self->{children}->[1];
        my string $fhref_symbol = $self->{children}->[2];
        my string $semicolon    = $self->{children}->[3];
        $rperl_source_group->{PMC} .= $my . q{ } . $type_fhref . q{ } . $fhref_symbol . $semicolon . "\n";
    }
    else {
        die RPerl::Parser::rperl_rule__replace( 'ERROR ECVGEASRP00, CODE GENERATOR, ABSTRACT SYNTAX TO RPERL: grammar rule '
                . $self_class
                . ' found where VariableDeclaration_178, VariableDeclaration_179, VariableDeclaration_180, or VariableDeclaration_181 expected, dying' )
            . "\n";
    }

    return $rperl_source_group;
};

our string_hashref::method $ast_to_cpp__generate__CPPOPS_PERLTYPES = sub {
    ( my object $self, my string_hashref $modes) = @_;
    my string_hashref $cpp_source_group = { CPP => q{// <<< RP::O::S::VD __DUMMY_SOURCE_CODE CPPOPS_PERLTYPES >>>} . "\n" };

    #...
    return $cpp_source_group;
};

our string_hashref::method $ast_to_cpp__generate__CPPOPS_CPPTYPES = sub {
    ( my object $self, my string_hashref $modes) = @_;
    my string_hashref $cpp_source_group = { CPP => q{} };
    my string_hashref $cpp_source_subgroup;
    my string $self_class = ref $self;

 #    RPerl::diag( 'in VariableDeclaration->ast_to_cpp__generate__CPPOPS_CPPTYPES(), received $self = ' . "\n" . RPerl::Parser::rperl_ast__dump($self) . "\n" );

    # unwrap VariableDeclaration_178, VariableDeclaration_179, VariableDeclaration_180, and VariableDeclaration_181 from Statement_153
    if ( $self_class eq 'Statement_153' ) {    # Statement -> VariableDeclaration
        $self       = $self->{children}->[0];
        $self_class = ref $self;
    }

    if ( $self_class eq 'VariableDeclaration_178' ) {    # VariableDeclaration -> MY Type VARIABLE_SYMBOL ';'
        my string $type   = $self->{children}->[1]->{children}->[0];
        my string $symbol = $self->{children}->[2];
        $type =~ s/^constant_/const\ /gxms;              # 'constant_foo' becomes 'const foo'
        $cpp_source_group->{CPP} .= $type . q{ } . ( substr $symbol, 1 ) . ';' . "\n";
    }
    elsif ( $self_class eq 'VariableDeclaration_179' ) {    # VariableDeclaration -> MY Type VARIABLE_SYMBOL OP19_VARIABLE_ASSIGN SubExpressionOrStdin ';'
        my string $type                   = $self->{children}->[1]->{children}->[0];
        my string $symbol                 = $self->{children}->[2];
        my string $assign                 = $self->{children}->[3];
        my object $subexpression_or_stdin = $self->{children}->[4];
        my string $semicolon              = $self->{children}->[5];

        my bool $is_constructor_call = 0;
        if (    ( exists $subexpression_or_stdin->{children}->[0]->{children}->[0] )
            and
            ( $subexpression_or_stdin->{children}->[0]->{children}->[0]->isa('RPerl::Operation::Expression::SubroutineCall::MethodCall::ConstructorCall') ) )
        {
            $is_constructor_call = 1;
            my string $constructor_type = $subexpression_or_stdin->{children}->[0]->{children}->[0]->{children}->[0]->{children}->[0];
            if ( $type ne $constructor_type ) {
                die RPerl::Parser::rperl_rule__replace( 'ERROR ECVGEASCP16, CODE GENERATOR, ABSTRACT SYNTAX TO C++: data type mismatch, '
                         . q{'} . $type . q{'}
                        . ' type is different than ' . q{'} . $constructor_type . q{'} . ' constructor type, dying' )
                    . "\n";
            }
        }
#        my string $tmp_debug_string = RPerl::Parser::rperl_ast__dump($subexpression_or_stdin);
#        if ( $tmp_debug_string =~ /constant_sse_number_pair::new_from_singleton_duplicate/ ) {
#            RPerl::diag( 'in VariableDeclaration->ast_to_cpp__generate__CPPOPS_CPPTYPES(), have $subexpression_or_stdin = ' . "\n"
#                    . RPerl::Parser::rperl_ast__dump($subexpression_or_stdin)
#                    . "\n" );
#            die 'TMP DEBUG';
#        }

        $type =~ s/^constant_/const\ /gxms;    # 'constant_foo' becomes 'const foo'
        $cpp_source_group->{CPP} .= $type . q{ } . ( substr $symbol, 1 );
        # do not explicitly call C++ new() constructor
        if (not $is_constructor_call) {
            $cpp_source_group->{CPP} .= q{ } . $assign . q{ };
            $cpp_source_subgroup = $subexpression_or_stdin->ast_to_cpp__generate__CPPOPS_CPPTYPES($modes);
            RPerl::Generator::source_group_append( $cpp_source_group, $cpp_source_subgroup );
        }
        $cpp_source_group->{CPP} .= $semicolon . "\n";
    }
    elsif ( $self_class eq 'VariableDeclaration_180' ) { # VariableDeclaration -> MY Type VARIABLE_SYMBOL OP02_ARRAY_THINARROW SubExpression ']' OP19_VARIABLE_ASSIGN 'undef' ';'
        my string $type          = $self->{children}->[1]->{children}->[0];
        my string $symbol        = $self->{children}->[2];
        my object $subexpression = $self->{children}->[4];
        my string $semicolon     = $self->{children}->[8];

#        RPerl::diag( 'in VariableDeclaration->ast_to_cpp__generate__CPPOPS_CPPTYPES(), have $subexpression = ' . RPerl::Parser::rperl_ast__dump($subexpression) . "\n" );

        $type =~ s/^constant_/const\ /gxms;              # 'constant_foo' becomes 'const foo'
                                                         # compensate for array size vs array max index (difference of 1)
        my bool $size_compensated = 0;
        if ( $subexpression->{children}->[0]->isa('RPerl::Operation::Expression::Operator') ) {
            if ( $subexpression->{children}->[0]->{children}->[0]->isa('RPerl::Operation::Expression::Operator::Math::AddSubtract') ) {
                if (    ( exists $subexpression->{children}->[0]->{children}->[0]->{children}->[1] )
                    and ( $subexpression->{children}->[0]->{children}->[0]->{children}->[1] eq q{-} ) )
                {
                    if ( $subexpression->{children}->[0]->{children}->[0]->{children}->[2]->isa('RPerl::Operation::Expression::SubExpression::Literal') ) {
                        if ( $subexpression->{children}->[0]->{children}->[0]->{children}->[2]->{children}->[0]
                            ->isa('RPerl::Operation::Expression::SubExpression::Literal::Number') )
                        {
                            if ( $subexpression->{children}->[0]->{children}->[0]->{children}->[2]->{children}->[0]->{children}->[0] eq q{1} ) {

                                # COMPILE-TIME OPTIMIZATION: '$foo - 1' becomes '$foo'
                                $subexpression    = $subexpression->{children}->[0]->{children}->[0]->{children}->[0];
                                $size_compensated = 1;
                            }
                            else {
                                # '$foo - 10' becomes '$foo - 9'
                                my number $tmp_number
                                    = ::string_to_number( $subexpression->{children}->[0]->{children}->[0]->{children}->[2]->{children}->[0]->{children}->[0] );
                                $tmp_number--;
                                $subexpression->{children}->[0]->{children}->[0]->{children}->[2]->{children}->[0]->{children}->[0]
                                    = ::number_to_string($tmp_number);
                                $size_compensated = 1;
                            }
                        }
                    }
                }
            }
        }
        $cpp_source_group->{CPP} .= $type . q{ } . ( substr $symbol, 1 ) . $semicolon . "\n";
        $cpp_source_group->{CPP} .= ( substr $symbol, 1 ) . q{.resize(};
        $cpp_source_subgroup = $subexpression->ast_to_cpp__generate__CPPOPS_CPPTYPES($modes);
        if ( not $size_compensated ) {

            # 'foo() * $bar' becomes '(foo() * $bar) + 1'
            $cpp_source_subgroup->{CPP} = q{(} . $cpp_source_subgroup->{CPP} . q{) + 1};
        }
        RPerl::Generator::source_group_append( $cpp_source_group, $cpp_source_subgroup );
        $cpp_source_group->{CPP} .= q{)} . $semicolon . "\n";
    }
    elsif ( $self_class eq 'VariableDeclaration_181' ) {    # VariableDeclaration -> MY TYPE_FHREF FHREF_SYMBOL ';'
        my string $type_fhref   = $self->{children}->[1];
        my string $fhref_symbol = $self->{children}->[2];
        $type_fhref =~ s/^constant_/const\ /gxms;           # 'constant_foo' becomes 'const foo'
        $cpp_source_group->{CPP} .= $type_fhref . q{ } . ( substr $fhref_symbol, 1 ) . ';' . "\n";
    }
    else {
        die RPerl::Parser::rperl_rule__replace( 'ERROR ECVGEASCP00, CODE GENERATOR, ABSTRACT SYNTAX TO C++: grammar rule '
                . $self_class
                . ' found where VariableDeclaration_178, VariableDeclaration_179, VariableDeclaration_180, or VariableDeclaration_181 expected, dying' )
            . "\n";
    }

    return $cpp_source_group;
};

1;    # end of class
