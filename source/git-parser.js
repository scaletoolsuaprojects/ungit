var addressParser = require('./address-parser');

		var path = /^diff\s--git\s\w\/(.+?)\s\w\/(.+)$/.exec(lines.shift());
		fetch: addressParser.parseAddress(lines[1].slice('  Fetch URL: '.length)),
		push: addressParser.parseAddress(lines[1].slice('  Push  URL: '.length))