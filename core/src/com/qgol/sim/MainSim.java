package com.qgol.sim;

import com.badlogic.gdx.ApplicationAdapter;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.ShapeRenderer;

import java.util.Arrays;

public class MainSim extends ApplicationAdapter {
    private ShapeRenderer shapeRenderer;

    int fieldXSize = 0;
    int fieldYSize = 0;
    int fieledSize = 8;
    GolField field = null;

    public void setWindowRes(int windowSizeX, int windowSizeY) {
    	fieldXSize = windowSizeX/fieledSize;
    	fieldYSize = windowSizeY/fieledSize;
    }

    @Override
    public void create() {
        shapeRenderer = new ShapeRenderer();
        field = new GolField(fieldXSize, fieldYSize);
    }

    boolean t = false;
    @Override
    public void render() {
        Gdx.gl.glClearColor(1, 1, 1, 1);
        Gdx.gl.glClear(GL20.GL_COLOR_BUFFER_BIT);

        field.render(shapeRenderer, fieledSize);
        field.applyRules();

        // field.printField();

        shapeRenderer.end();
    }

    @Override
    public void dispose() {
        shapeRenderer.dispose();
    }
}

