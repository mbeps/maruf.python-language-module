#^ DEPENDENCIES
function title() {
	# clear
	echo $1
}

function installExtensions() {
	extensions=$1
	for extension in "${extensions[@]}"; do
		code --install-extension $extension
	done
}

function python() {
	title "Python"
	
	extensions=(
		"littlefoxteam.vscode-python-test-adapter" 		# Python Test Adapter
		"dongli.python-preview" 						# Python Preview
		"donjayamanne.python-environment-manager" 		# Python Environment Manager
		"ms-python.python" 								# Python
		"ms-python.vscode-pylance" 						# PyLance
		"magicstack.MagicPython" 						# MagicPython
		"KevinRose.vsc-python-indent" 					# Python Indent
		"njpwerner.autodocstring" 						# DocString 
	)
	installExtensions "${extensions[@]}"
	jupyter
}

function jupyter() {
	title "Jupyter"
	
	extensions=(
		"ms-toolsai.jupyter" 							# Jupyer 
		"ms-toolsai.jupyter-renderers" 					# Jupyer Renderers
		"ms-toolsai.jupyter-keymap"						# Jupyter Keymaps
	)
	installExtensions "${extensions[@]}"
}
