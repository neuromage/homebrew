require 'formula'

class Cvxmod < Formula
	url 'http://cvxmod.net/dist/cvxmod-0.4.6.tar.gz'
	homepage 'http://cvxmod.net/index.html'
	md5 'e5d859659853809e5c7fc2e2970be88e'

	depends_on 'cvxopt'

	def install
		system "python setup.py install --home=#{HOMEBREW_PREFIX}"
	end

	def caveats
		the_caveat = <<-EOS
	  Ensure that homebrew python packages can be seen by Python:
	  	export PYTHONPATH=#{HOMEBREW_PREFIX}/lib/python:$PYTHONPATH
				EOS
		return the_caveat
	end
end
