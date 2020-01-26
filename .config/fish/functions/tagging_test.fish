# Defined in - @ line 1
function tagging_test --description 'alias tagging_test=export TAG=(date +TEST-%F-%H-%M)'
	export TAG=(date +TEST-%F-%H-%M) $argv;
end
