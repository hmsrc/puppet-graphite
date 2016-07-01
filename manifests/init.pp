
class graphite (
  $manage_carbon  = $::graphite::params::manage_carbon,
  $pkg            = $::graphite::params::pkg,
  $pkg_vers       = $::graphite::params::pkg_vers,

  ) inherits graphite::params {

    if $manage_carbon {
      include ::carbon
    }

    include ::graphite::install
  }

}
