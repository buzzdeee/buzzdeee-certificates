define certificates::certfiles (
  $hieraname,
  $owner,
  $group,
  $mode,
  $filename,
) {
  file { "$filename":
    owner   => $owner,
    group   => $group,
    mode    => $mode,
    content => hiera($hieraname),
  }
}
