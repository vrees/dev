package de.vrees.jaxrs.wsclient;

import java.net.URI;

import javax.websocket.ContainerProvider;
import javax.websocket.WebSocketContainer;

public class SimpleStockMarketWSClient {
    private static final String URI = "ws://localhost:8080/entenhausen/websockets/simplestockmarket";

    public static void main(String[] args) throws Exception {
        try {
            String companyId = args[0];

            SimpleStockMarketWSClientEndpoint clientEndpoint = new SimpleStockMarketWSClientEndpoint(companyId,
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