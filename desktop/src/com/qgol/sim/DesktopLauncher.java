package com.qgol.sim;

import com.badlogic.gdx.backends.lwjgl3.Lwjgl3Application;
import com.badlogic.gdx.backends.lwjgl3.Lwjgl3ApplicationConfiguration;
import com.qgol.sim.MainSim;

// Please note that on macOS your application needs to be started with the -XstartOnFirstThread JVM argument
public class DesktopLauncher {

	public static void main (String[] arg) {
		int windowRes = 512;

		Lwjgl3ApplicationConfiguration config = new Lwjgl3ApplicationConfiguration();
		config.setForegroundFPS(1);
		config.setTitle("QuantumGameOfLife");
		config.setWindowedMode(windowRes, windowRes);
		MainSim sim = new MainSim();
		sim.setWindowRes(windowRes, windowRes);
		new Lwjgl3Application(sim, config);
	}
}
