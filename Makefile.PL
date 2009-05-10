
use ExtUtils::MakeMaker;
WriteMakefile(
              NAME	=> q[Inline::Files],
              VERSION => q[0.63],
	      PREREQ_PM => { Filter::Util::Call => 0 },

	     );
