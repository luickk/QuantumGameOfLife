package com.qgol.sim;

import java.util.Arrays;

public class GolCell {
	enum State {
	  ALIVE,
	  DEAD,
	}

	public int x = 0;
	public int y = 0;
	public State state = State.DEAD;


	public GolCell() {

	}

	public void printState() {
		if (state == State.ALIVE) System.out.print("1");
		if (state == State.DEAD) System.out.print(" 0");
	}
}