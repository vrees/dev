package de.vrees.ledcircle;


import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.spi.SpiChannel;
import com.pi4j.io.spi.SpiDevice;
import com.pi4j.io.spi.SpiFactory;
import com.pi4j.io.spi.SpiMode;

import java.io.IOException;

/**
 * Created by vrees on 14.12.15.
 */
public class LedCircle {


    public static void main(String[] args) throws InterruptedException, IOException {

        System.out.println("<--Pi4J--> SPI Control Example ... started.");

        // create gpio controller
        final GpioController gpio = GpioFactory.getInstance();

        SpiDevice device = SpiFactory.getInstance(SpiChannel.CS0, 3000000, SpiMode.MODE_0);


    }


}
