// load libs

require('lodash');
require('shelljs');

// load config

var sites = require('/sites/.config');

# INSTALL EACH SITE

_.each(sites, function() {
	if (!folder) shell('mkdir /sites/' + name + '.' + ext);
	if (!repo) {
		shell('git clone ' + repo + '/sites/.repos/' + name);
		cd /sites/.repos
		bare $name ../$name.$ext
	}
}
