// THIS IS TOTALLY INCOMPLETE AND REALLY JUST PSEUDOCODE RIGHT NOW

// load libs

require('lodash');
require('shelljs');

// load config

var sites = require('/sites/.config');

// install each site

_.each(sites, function() {
	if (!folder) shell('mkdir /sites/' + name + '.' + ext);
	if (!repo) {
		shell('git clone ' + repo + '/sites/.repos/' + name);
		cd /sites/.repos
		bare $name ../$name.$ext
	}
}
