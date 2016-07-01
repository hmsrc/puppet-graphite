class graphite::install (
  $pkg = $::graphite::pkg,
  $pkg_vers = $::graphite::pkg_vers,
  ) {

    pacakge {$pkg:
      ensure => $pkg_vers,
    }
  }
