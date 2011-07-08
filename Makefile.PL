
use ExtUtils::MakeMaker;
WriteMakefile(
              NAME	=> q[Inline::Files],
              VERSION   => q[0.67],
	      PREREQ_PM => {
                            'Filter::Util::Call' => 0,
                            Test                 => 0,
                            Cwd                  => 0,
                           },

	     );
