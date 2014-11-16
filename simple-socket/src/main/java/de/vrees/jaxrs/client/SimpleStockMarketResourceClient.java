package de.vrees.jaxrs.client;

import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.Invocation.Builder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status.Family;

public class SimpleStockMarketResourceClient {
    // private static final String URI = "http://localhost:8080/rest/items/DruckdifferenzVerdampfer/state";

    // private static final String URI = "http://localhost:8080/rest/items/Radio_Station/state";

    private static final String URI = "http://localhost:8080/rest/items/Pressure_Setpoint/state";

    private WebTarget target;

    public static void main(String[] args) throws Exception {
        try {

            SimpleStockMarketResourceClient client = new SimpleStockMarketResourceClient();

            client.init();
            // client.getResonse();

            double value = 20.0;
            Builder request = client.getTarget().request();

            for (int i = 1; i < 20; i++) {
                client.setValue(request, value + i);
                Thread.sleep(500);
            }

            request = null;

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public double getValue() {
        double value = target.request().get(Double.class);
        System.out.println("SUCCESS: Get! => [DruckdifferenzVerdampfer=" + value + "]");
        return value;
    }

    public void getResonse() {
        Response response = target.request().get();
        System.out.println("SUCCESS: Get! => [DruckdifferenzVerdampfer=" + response + "]");
        response.close();
    }

    public void setValue(Builder request, double value) {

        Invocation invocation = request.buildPut(Entity.text(value));
        Response response = invocation.invoke();

        if (response.getStatusInfo().getFamily() == Family.SUCCESSFUL) {
            System.out.println("SUCCESS: Set: " + value);
        } else {
            System.err.println("ERROR: Set! => [Status Code=" + response.getStatus() + "]");
        }
        response.close();
    }

    public void init() {
        target = ClientBuilder.newClient().target(URI);
        target.request().header("X-Atmosphere-Transport", "long-polling");
    }

    public WebTarget getTarget() {
        return target;
    }

}
