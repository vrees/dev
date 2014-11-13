package de.vrees.jaxrs.server;

import java.util.HashMap;
import java.util.Map;

// @Singleton
// @LocalBean
public class MarketPriceStore {

    private Map<String, Double> map = new HashMap<String, Double>();

    // @Inject
    // Event<ChangeEvent> eventSource;

    // public void store(String companyId, Double marketPriceNew) {
    // Double marketPriceOld = map.get(companyId);
    //
    // if (!Objects.equals(marketPriceOld, marketPriceNew)) {
    // map.put(companyId, marketPriceNew);
    // eventSource.fire(new ChangeEvent(companyId, marketPriceNew));
    // }
    // }
    //
    // public Optional<Double> retrieve(String key) {
    // return Optional.ofNullable(map.get(key));
    // }
}
