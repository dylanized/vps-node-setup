mkdir /sites
mkdir /sites/.repos
mkdir /sites/.scripts

foreach ($site as $site) {
  mkdir /sites/$name.$ext
	git clone $repo /sites/.repos/$name
	cd /sites/.repos
	bare $name ../$name.$ext
}
