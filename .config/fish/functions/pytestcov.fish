# Defined in - @ line 1
function pytestcov --description 'alias pytestcov= pytest  --cov-report xml:cov.xml --cov'
	pytest  --cov-report xml:cov.xml --cov $argv;
end
