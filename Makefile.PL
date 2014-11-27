use ExtUtils::MakeMaker;

$defines = $] < 5.008 ? "-DOLDPERL" : "-DNEWPERL";

my %options = %{
{
  'NAME' => 'Math::Complex_C::L',
  'LIBS' => [
    '-lm'
  ],
  'DEFINE' => $defines,
  'INC' => '',
  'VERSION_FROM' => 'L.pm',
  META_MERGE => {
   'meta-spec' => { version => 2 },
    resources => {
      repository => {
        type => 'git',
        url => 'https://github.com/sisyphus/math-complex_c-l.git',
        web => 'https://github.com/sisyphus/math-complex_c-l',
      },
    },
  },
}
};
WriteMakefile(%options);

# Remove the Makefile dependency. Causes problems on a few systems.
sub MY::makefile { '' }
