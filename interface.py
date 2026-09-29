#!/bin/python3

import tkinter as tk
from tkinter import filedialog
from tkinter import ttk
import subprocess
import threading
import re

ansi_escape = re.compile(r'\x1B(?:[@-Z\\-_]|\[[0-?]*[ -/]*[@-~])')

folder = "/home/rlebaill/Piscine/C00"

options = {
	"C Piscine Shell 00": "./SHELL00/SHELL00.sh",
	"C Piscine Shell 01": "./SHELL01/SHELL01.sh",
	"C Piscine C 00": "./C00/C00.sh",
	"C Piscine C 01": "./C01/C01.sh",
	"C Piscine C 02": "./C02/C02.sh",
	"C Piscine C 03": "./C03/C03.sh",
	"C Piscine C 04": "./C04/C04.sh",
	"C Piscine C 05": "./C05/C05.sh",
	"C Piscine C 06": "./C06/C06.sh",
	"C Piscine C 07": "./C07/C07.sh",
	"C Piscine C 08": "./C08/C08.sh",
	"C Piscine C 09": "./C09/C09.sh",
	"C Piscine C 10": "./C10/C10.sh",
	"C Piscine C 11": "./C11/C11.sh",
	"C Piscine C 12": "./C12/C12.sh",
	"C Piscine C 13": "./C13/C13.sh"
}


def browse():
	global folder
	folder = filedialog.askdirectory()


def test(output: tk.Text, key: str):
	output.delete("1.0", tk.END)

	if key not in options.keys(): return

	threading.Thread(
		target=run_test,
		args=(output, key),
		daemon=True
	).start()

def run_test(output: tk.Text, key: str):
	process = subprocess.Popen(
		[options[key], folder],
		stdout=subprocess.PIPE,
		stderr=subprocess.STDOUT,
		text=True,
		bufsize=1
	)

	for line in process.stdout:
		line = ansi_escape.sub('', line)
		output.after(0, output.insert, tk.END, line)
		output.after(0, output.see, tk.END)

	process.wait()

if __name__ == '__main__':
	window = tk.Tk()
	window.title("Moulinette Launcher")
	window.geometry("600x400")

	label = tk.Label(
		window,
		text="Which project do you want to test ?"
	)
	label.pack(padx=10, pady=10)

	select = ttk.Combobox(
		window,
		values=list(options.keys()),
		state="readonly"
	)
	select.pack(padx=10, pady=10)

	browse_button = tk.Button(
		window,
		text="Browse",
		command=browse
	)
	browse_button.pack()

	output = tk.Text(window, height=12, width=65, background="black", foreground="white")

	start_button = tk.Button(
		window,
		text="Start",
		command=lambda: test(output, select.get())
	)
	start_button.pack(padx=10, pady=10)

	output.pack()

	window.mainloop()
