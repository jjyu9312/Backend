package com.safetour.myapp;

import org.python.core.PyObject;
import org.python.util.PythonInterpreter;
public class JyTest {
	public static void main(String[] args) {
		PythonInterpreter interpreter = new PythonInterpreter();
		interpreter.exec("print('Hello World!')");
		interpreter.exec("a = 3");
		interpreter.exec("b = 4");
		
		PyObject result = interpreter.get("a");
		System.out.println(result);
		interpreter.exec("def add(a, b): return a+b");
		interpreter.exec("c = add(3,4)");
		PyObject returnValue = interpreter.get("c");
		System.out.println(returnValue);
		interpreter.exec("import numpy as np");
		interpreter.exec("a = [1,2,3,4]");
		interpreter.exec("narr = np.array(a)");
	}	
}
