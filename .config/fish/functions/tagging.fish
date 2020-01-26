# Defined in - @ line 1
function tagging --description 'alias tagging=export TAG=(date +STAGING-%F-%H-%M)'
	export TAG=(date +STAGING-%F-%H-%M) $argv;
end
