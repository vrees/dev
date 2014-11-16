package de.vrees.jaxrs.wsclient;

import javax.websocket.ClientEndpoint;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;

@ClientEndpoint
public class OpenHabWebsocketClientEndpoint {
    Session session;

    public OpenHabWebsocketClientEndpoint() {

    }

    @OnOpen
    public void open(Session session) throws Exception {
        this.session = session;
    }

    @OnMessage
    public void message(Double value) {
        System.out.println("received: " + value);
    }

    public void disconnect() {
        try {
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
