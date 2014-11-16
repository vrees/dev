package de.vrees.jaxrs.wsclient;

import java.net.URI;

import javax.websocket.ContainerProvider;
import javax.websocket.WebSocketContainer;

public class SimpleStockMarketWSClient {
    // private static final String URI = "ws://localhost:8080/entenhausen/websockets/simplestockmarket";

    private static final String URI = "ws://localhost:8080/rest/items/Pressure_Setpoint/state";

    public static void main(String[] args) throws Exception {
        try {
            SimpleStockMarketWSClientEndpoint clientEndpoint = new SimpleStockMarketWSClientEndpoint(27.2,
                    System.out::println);
            WebSocketContainer container = ContainerProvider.getWebSocketContainer();
            container.connectToServer(clientEndpoint, new URI(URI));

            System.in.read();
            clientEndpoint.disconnect();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
