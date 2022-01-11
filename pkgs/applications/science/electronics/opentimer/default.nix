{ lib
, stdenv
, fetchFromGitHub
, cmake
, tcl
}:

stdenv.mkDerivation {
  pname = "opentimer";
  version = "2.0";
  enableParallelBuilding = true;
  src = fetchFromGitHub {
    owner = "OpenTimer";
    repo = "OpenTimer";
    rev = "18d28ffbf2e19c58bd2afa2a215884da80c26ab1";
    hash = "sha256-bYVsMZSYtrxtNgFo8ZJ/D0Kw2Be0to0tC90tXsMzPWo=";
  };

  nativeBuildInputs = [
    cmake
  ];

  buildInputs = [
    tcl
  ];

  meta = with lib; {
    description = "A High-Performance Timing Analysis Tool for VLSI Systems";
    homepage = "https://github.com/OpenTimer/OpenTimer";
    license = licenses.mit;
    maintainers = with maintainers; [ OllieB ];
    platforms = platforms.linux;
  };
}
