/**
 *
 * @author Pedro
 */

package crucigrama.BO;

import java.awt.Dimension;
import java.io.Serializable;
import java.util.Map;

public interface IJuegoPalabras
extends Serializable {
    public Map getListaPalabras();

    public ICeldas getCelda(int var1, int var2);

    public Map getPistas(Direccion var1);

    public Dimension getDimension();
}

