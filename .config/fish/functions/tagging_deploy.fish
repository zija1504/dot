# Defined in - @ line 1
function tagging_deploy --description 'alias tagging_deploy=export TAG=(date +DEPLOY-%F-%H-%M)'
	export TAG=(date +DEPLOY-%F-%H-%M) $argv;
end
