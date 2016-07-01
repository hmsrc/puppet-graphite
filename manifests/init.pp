
class graphite (
  Boolean $manage_carbon             = $::graphite::params::manage_carbon,
  String $pkg                        = $::graphite::params::pkg,
  String $pkg_vers                   = $::graphite::params::pkg_vers,

  String $graphite_root              = $::graphite::params::graphite_root,
  String $secret_key                 = $::graphite::params::secret_key,
  Array $allowed_hosts               = $::graphite::params::allowed_hosts,
  String $time_zone                  = $::graphite::params::time_zone,
  Boolean $log_rendering_performance = $::graphite::params::log_rendering_performance,
  Boolean $log_cache_performance     = $::graphite::params::log_cache_performance,
  Boolean $log_metric_access         = $::graphite::params::log_metric_access,
  String $conf_dir                   = $::graphite::params::conf_dir,
  String $storage_dir                = $::graphite::params::storage_dir,
  String $content_dir                = $::graphite::params::content_dir,
  String $dashboard_conf             = $::graphite::params::dashboard_conf,
  String $graphtemplates_conf        = $::graphite::params::graphtemplates_conf,
  String $whisper_dir                = $::graphite::params::whisper_dir,
  String $rrd_dir                    = $::graphite::params::rrd_dir,
  Array $data_dirs                   = $::graphite::params::data_dirs,
  String $log_dir                    = $::graphite::params::log_dir,
  String $index_file                 = $::graphite::params::index_file,
  ) inherits graphite::params {

    if $manage_carbon {
      include ::carbon
    }

    include ::graphite::install
    include ::graphite::config
  }
