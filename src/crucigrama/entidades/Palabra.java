/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crucigrama.entidades;

/**
 *
 * @author Pedro
 */
public class Palabra {

    String word;
    String pista;
    int x;
    int y;
    String dir;
    int categoria;

    public Palabra() {
    }

    public Palabra(String word, int x, int y, String dir) {
        this.word = word;
        this.x = x;
        this.y = y;
        this.dir = dir;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    
    public String getPista() {
        return pista;
    }

    public void setPista(String pista) {
        this.pista = pista;
    }

    
    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    @Override
    public String toString() {
        return "Palabra{" + "word=" + word + ", x=" + x + ", y=" + y + ", dir=" + dir + '}';
    }

    
}
