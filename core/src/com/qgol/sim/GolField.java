package com.qgol.sim;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;

import java.util.Arrays;

public class GolField {

	public int fieldXSize = 0;
	public int fieldYSize = 0;

	public GolCell[][] cells = null;

	public int[][] nNeighbourMatrix = null;

	public GolField(int fieldX, int fieldY) {
		cells = new GolCell[fieldX][fieldY];
		nNeighbourMatrix = new int[fieldX][fieldY];
        for (int i = 0; i < fieldX; i++)
    		for (int j = 0; j < fieldY; j++)
    			 cells[i][j] = new GolCell();

    	fieldXSize = fieldX;
    	fieldYSize = fieldY;

    	cells[10][11].state = GolCell.State.ALIVE;
    	cells[10][12].state = GolCell.State.ALIVE;
    	cells[10][13].state = GolCell.State.ALIVE;
	}

	public void printField() {
		for (int x = 0; x < fieldXSize; x++) {
            for (int y = 0; y < fieldYSize; y++) {
				cells[x][y].printState();
            }
        }
	}



    // 1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
    // 2. Any live cell with two or three live neighbours lives on to the next generation.
    // 3. Any live cell with more than three live neighbours dies, as if by overpopulation.
    // 4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
	public void applyRules() {
		for (int x = 0; x < fieldXSize; x++) {
		    for (int y = 0; y < fieldYSize; y++) {
				nNeighbourMatrix[x][y] = getNneighbours(x, y);

		    	if (nNeighbourMatrix[x][y] > 0) System.out.println("[" + x + "," + y + "] - " + nNeighbourMatrix[x][y] + ", " + cells[x][y].state);
			}
		}
		for (int x = 0; x < fieldXSize; x++) {
		    for (int y = 0; y < fieldYSize; y++) {
		    	int nNeighbours = nNeighbourMatrix[x][y];
		    	// GolCell cell = cells[x][y];
				// if (cell.state == GolCell.State.ALIVE) System.out.println("[" + x + "," + y + "] - " + nNeighbours + ", " + cell.state);
		    	int rule = 0;
		    	// rule 1.
		    	if (cells[x][y].state == GolCell.State.ALIVE && nNeighbours < 2) {
		    		cells[x][y].state = GolCell.State.DEAD;
		    		rule = 1;
		    	}
		    	// rule 2.
		    	else if (cells[x][y].state == GolCell.State.ALIVE && (nNeighbours == 2 || nNeighbours == 3)) {
		    		// cells[x][y].state = cells[x][y].state;
		    		rule = 2;
		    	}
		    	// rule 3.
		    	else if (cells[x][y].state == GolCell.State.ALIVE && nNeighbours > 3) {
		    		cells[x][y].state = GolCell.State.DEAD;
		    		rule = 3;
		    	}
		    	// rule 4.
		    	else if (cells[x][y].state == GolCell.State.DEAD && nNeighbours == 3) {
		    		cells[x][y].state = GolCell.State.ALIVE;
		    		rule = 4;
		    	}
		    	if (rule != 0) System.out.println("rule " + rule + ". [" + x + "," + y + "] - " + nNeighbours + ", " + cells[x][y].state);
		    }
		}
	}


	public int getNneighbours(int x, int y) {
		int nNeighbours = 0;

		if (x < fieldXSize-1)
			if (cells[x + 1][y].state == GolCell.State.ALIVE) nNeighbours++;
		if (x < fieldXSize-1 && y < fieldYSize-1) 
			if (cells[x + 1][y + 1].state == GolCell.State.ALIVE) nNeighbours++;
		if (x > 0)
			if (cells[x - 1][y].state == GolCell.State.ALIVE) nNeighbours++;
		if (x > 0 && y > 0) 
			if (cells[x - 1][y - 1].state == GolCell.State.ALIVE) nNeighbours++;

		if (y < fieldYSize-1)
			if (cells[x][y + 1].state == GolCell.State.ALIVE) nNeighbours++;
		if (x < fieldXSize-1 && y > 0)
			if (cells[x + 1][y - 1].state == GolCell.State.ALIVE) nNeighbours++;
		
		if (y > 0)
			if (cells[x][y - 1].state == GolCell.State.ALIVE) nNeighbours++;
		if (x > 0 && y < fieldYSize-1)
			if (cells[x - 1][y + 1].state == GolCell.State.ALIVE) nNeighbours++;

		return nNeighbours;
	}

	public void render(ShapeRenderer shapeRenderer, int tileSize) {
		shapeRenderer.begin(ShapeRenderer.ShapeType.Filled);

        for (int x = 0; x < fieldXSize; x++) {
            for (int y = 0; y < fieldYSize; y++) {

                if (cells[x][y].state == GolCell.State.ALIVE) {
                    shapeRenderer.setColor(Color.GREEN);
                } else if (cells[x][y].state == GolCell.State.DEAD) {
                    shapeRenderer.setColor(Color.BLACK);
                }
                shapeRenderer.rect(y * tileSize, x * tileSize, tileSize, tileSize);
            }
        }
	}
}