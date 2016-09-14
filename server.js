var _Orator = require(__dirname+'/node_modules/headlight-node-sdk/server/Headlight-NodeSDK.js').new(
	{
		Product:'Headlight-SDK-App-{{AppHash}}',
		// The folder to serve static web files from for this app.  By default, use the Stage folder.
		StaticContentFolder: __dirname+'/stage/',
		ConfigFile: __dirname+'/Headlight-App-Config.json'
	}).orator();

_Orator.startWebServer();