package de.vrees.jaxrs.wsclient;

import java.net.URI;
import java.util.UUID;

import javax.websocket.ContainerProvider;
import javax.websocket.WebSocketContainer;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.Invocation.Builder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status.Family;

public class OpenHabClient {

    private static final String URI_HTTP = "http://localhost:8080/rest/items/Pressure_Setpoint/state";

    private static final String URI_WS = "ws://localhost:8080/rest/items/Pressure_Setpoint/state";

    public static void main(String[] args) throws Exception {
        try {
            OpenHabClient client = new OpenHabClient();

            client.initForWebSocket(20.0);
            client.runWebSocket();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initForWebSocket(double value) {
        WebTarget target = ClientBuilder.newClient().target(URI_HTTP);

        // tell OpenHab to switch to websocket
        Builder request = target.request();
        // request.header("X-Atmosphere-Transport", "long-polling");
        // request.header("X-Atmosphere-Transport", "websocket");
        // request.header("X-Atmosphere-Transport", "streaming");

        request.header("X-Atmosphere-tracking-id", UUID.randomUUID().toString());

        Invocation invocation = request.buildPut(Entity.text(value));
        Response response = invocation.invoke();

        if (response.getStatusInfo().getFamily() == Family.SUCCESSFUL) {
            System.out.println("SUCCESS: Set: " + value);
        } else {
            System.err.println("ERROR: Set! => [Status Code=" + response.getStatus() + "]");
        }
        response.close();
    }

    private void runWebSocket() throws Exception {
        OpenHabWebsocketClientEndpoint clientEndpoint = new OpenHabWebsocketClientEndpoint();

        WebSocketContainer container = ContainerProvider.getWebSocketContainer();
        container.connectToServer(clientEndpoint, new URI(URI_WS));

        System.in.read();
        clientEndpoint.disconnect();

        System.out.println("OpenHabClient Done!");
    }

}
