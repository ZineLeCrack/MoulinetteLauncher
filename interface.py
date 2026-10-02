#!/bin/python3

import sys
import os
import tkinter as tk
from tkinter import filedialog
from tkinter import ttk
import subprocess
import threading
import re

dirname = os.path.dirname(sys.argv[0])

ansi_escape = re.compile(r'\x1B(?:[@-Z\\-_]|\[[0-?]*[ -/]*[@-~])')

folder = dirname

options = {
	"C Piscine Shell 00": f"{dirname}/SHELL00/SHELL00.sh",
	"C Piscine Shell 01": f"{dirname}/SHELL01/SHELL01.sh",
	"C Piscine C 00": f"{dirname}/C00/C00.sh",
	"C Piscine C 01": f"{dirname}/C01/C01.sh",
	"C Piscine C 02": f"{dirname}/C02/C02.sh",
	"C Piscine C 03": f"{dirname}/C03/C03.sh",
	"C Piscine C 04": f"{dirname}/C04/C04.sh",
	"C Piscine C 05": f"{dirname}/C05/C05.sh",
	"C Piscine C 06": f"{dirname}/C06/C06.sh",
	"C Piscine C 07": f"{dirname}/C07/C07.sh",
	"C Piscine C 08": f"{dirname}/C08/C08.sh",
	"C Piscine C 09": f"{dirname}/C09/C09.sh",
	"C Piscine C 10": f"{dirname}/C10/C10.sh",
	"C Piscine C 11": f"{dirname}/C11/C11.sh",
	"C Piscine C 12": f"{dirname}/C12/C12.sh",
	"C Piscine C 13": f"{dirname}/C13/C13.sh"
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
		stderr=subprocess.STDOUT
	)

	for line in process.stdout:
		line = line.decode("utf-8", errors="replace")
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
