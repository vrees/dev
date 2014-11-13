package de.vrees.jaxrs.wsclient;

import java.util.function.Consumer;

import javax.websocket.ClientEndpoint;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;

@ClientEndpoint
public class SimpleStockMarketWSClientEndpoint {
    String companyId;

    Consumer<String> consumer;

    Session session;

    public SimpleStockMarketWSClientEndpoint(String companyId, Consumer<String> consumer) {
        this.consumer = consumer;
        this.companyId = companyId;
    }

    @OnOpen
    public void open(Session session) throws Exception {
        this.session = session;
        session.getBasicRemote().sendText(companyId);
    }

    @OnMessage
    public void message(String value) {
        consumer.accept(value);
    }

    public void disconnect() {
        try {
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
