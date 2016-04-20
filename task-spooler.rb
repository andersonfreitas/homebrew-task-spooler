class TaskSpooler < Formula
  desc "Batch system to run tasks one after another. Renamed as tsp to not conflict with moreutils."
  homepage "http://vicerveza.homeunix.net/~viric/soft/ts/"
  url "http://vicerveza.homeunix.net/~viric/soft/ts/ts-0.7.6.tar.gz"
  sha256 "93d383e6cf239f90aa06b9aed163c33e71de75fab907551eeded6238ba0e661d"

  def install
    system "sed -i.bkp \"s/-o ts/-o tsp/\" Makefile"
    system "sed -i.bkp \"s/) ts/) tsp/\" Makefile"
    system "sed -i.bkp \"s/ts.1/tsp.1/\" Makefile"
    system "mv ts.1 tsp.1"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
