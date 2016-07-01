class graphite::install (
  $pkg = $::graphite::pkg,
  $pkg_vers = $::graphite::pkg_vers,
  ) {

    package {$pkg:
      ensure => $pkg_vers,
    }
  }
