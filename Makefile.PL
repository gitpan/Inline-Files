
use ExtUtils::MakeMaker;
WriteMakefile(
              NAME	=> q[Inline::Files],
              VERSION => q[0.64],
	      PREREQ_PM => { Filter::Util::Call => 0 },

	     );
