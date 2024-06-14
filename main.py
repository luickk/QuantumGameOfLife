import pygame
import sys
import os
from physics import physics

pygame.init()



grid_window_size = (800, 600)
cell_size = (10, 10)
pygame.display.set_caption("Quantum GOL")



dis = pygame.display.set_mode(grid_window_size)
grid_size = (grid_window_size[0]//cell_size[0], grid_window_size[1]//cell_size[1])
fill_color = (255, 255, 255)
empty_color = (0, 0, 0)

def main():
    print(propagator_simple_free_particle(1,1,1))
    board = new_grid(grid_size[0], grid_size[1])
    board[10][10] = True
    board[11][10] = True
    board[11][10] = True
    board[12][10] = True
    while True:
        for e in pygame.event.get():
            if e.type == pygame.QUIT:
                pygame.quit()
                sys.exit()

        board = update_grid(board)

        draw_grid(dis, board)
        pygame.display.update()


def new_grid(w, h):
    return list([0]*h for i in range(w))


def count_neighbours(board, i, j):
    return sum(board[x][y] for x in range(i-1, i+2) for y in range(j-1, j+2) if (0 <= x < len(board) and 0 <= y < len(board[0]) and (x != i or y != j)))

def update_cell(board, x, y):
    # print("grid size: " + str(grid_size))
    # print("x/y: " + str(x) + "," + str(y))
    n_neighbours = count_neighbours(board, x, y)
    is_alive = board[x][y]
    if (is_alive):
        if(n_neighbours < 2): return False
        if(n_neighbours == 2 or n_neighbours == 3): return True
        if(n_neighbours > 3): return False
    else:
        if(n_neighbours == 3): return True
    return False


def update_grid(board):
    nb = new_grid(grid_size[0], grid_size[1])
    for i in range(grid_size[0]):
        for j in range(grid_size[1]):
            nb[i][j] = update_cell(board, i, j)
    return nb


def draw_grid(win, board):
    for i in range(grid_size[1]):
        for j in range(grid_size[0]):
            if board[j][i]:
                pygame.draw.rect(win, fill_color, (j*cell_size[0], i*cell_size[1], cell_size[0], cell_size[1]))
            else:
                pygame.draw.rect(win, empty_color,
                                 (j*cell_size[0], i*cell_size[1], cell_size[0], cell_size[1]))

if __name__ == "__main__":
    print(physics.propagator_simple_free_particle_2d((0,0), (10, 10), 10, 10))
    #main()
