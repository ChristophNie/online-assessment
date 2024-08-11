if ($IsMacOS) {
	brew install python
	# do not use virtual environments
	pip3 install flask --break-system-packages
} elseif ($IsLinux) {
	apt install python # you can do it yourself if you use linux
	pip install flask
} else {
	winget install -e --id Python.Python.3.11
	pip install flask
}

npm install -D tailwindcss
npx tailwindcss -i ./input.css -o ./static/output.css --minify

if ($IsMacOS) {
	python3 app.py
} else {
	python app.py
}
