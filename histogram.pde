
import grafica.*;

void setup() {
  size(500, 350);
  background(255);

  // Prepare the points for the plot
  int nPoints = 10;
  GPointsArray puntos = new GPointsArray(nPoints);

  for (int i = 0; i < nPoints; i++) {
    puntos.add(i, random(50));
  }


  GPlot plot = new GPlot(this);//contenedor de grafica
  plot.setPos(25, 25);
  plot.getXAxis().setAxisLabelText("minutos");
  plot.getYAxis().setAxisLabelText("grados centigrados");

  plot.setPoints(puntos);

  plot.defaultDraw();
}