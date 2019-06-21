package de.vrees.lavalamp.main;

import org.apache.commons.cli.*;

/**
 * LavaLamp application in order to notify Jenkins build breaks
 *
 * Created by viktor on 20.03.2016.
 */
public class LavaLampMain {
    private static final String JENKINS_URL = "url";
    private static final String COM_PORT = "comport";


    public static void main(String[] args) {

        LavaLampMain main = new LavaLampMain();

        main.usage(args);

    }

    private void usage(String[] args) {
        Options options = new Options();

        Option url = new Option(JENKINS_URL, true, "Jenkins-Url ending with 'api/xml'");
        url.setRequired(true);
        options.addOption(url);

        Option com = new Option(COM_PORT, true, "COM-Port e.g. COM3");
        com.setRequired(true);
        options.addOption(com);

        CommandLineParser parser = new DefaultParser();
        try {
            CommandLine line = parser.parse(options, args);
        } catch (ParseException e) {
//            e.printStackTrace();


            HelpFormatter formatter = new HelpFormatter();
            formatter.printHelp(getClass().getSimpleName(), options);
        }

    }
}
