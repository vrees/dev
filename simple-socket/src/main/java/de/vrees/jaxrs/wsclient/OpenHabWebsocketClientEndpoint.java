package de.vrees.jaxrs.wsclient;

import java.util.function.Consumer;

import javax.websocket.ClientEndpoint;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;

@ClientEndpoint
public class OpenHabWebsocketClientEndpoint {
    Double pressure = 99.0;

    Consumer<String> consumer;

    Session session;

    public OpenHabWebsocketClientEndpoint(Double pressure, Consumer<String> consumer) {
        this.consumer = consumer;
        this.pressure = pressure;
    }

    @OnOpen
    public void open(Session session) throws Exception {
        this.session = session;
        System.out.println("Session: " + session);

        session.getBasicRemote().sendText(pressure.toString());
    }

    @OnMessage
    public void message(Double value) {
        // consumer.accept(value);

        System.out.println("received RR: " + value);
    }

    public void disconnect() {
        try {
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
