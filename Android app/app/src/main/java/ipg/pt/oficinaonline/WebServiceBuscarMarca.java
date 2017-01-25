package ipg.pt.oficinaonline;

import android.os.AsyncTask;
import android.widget.TextView;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;

/**
 * Created by vasco on 11/01/2017.
 */

public class WebServiceBuscarMarca extends AsyncTask<Void, Void,String> {


    @Override
    protected String doInBackground(Void... voids) {
        try {
            URL url = new URL("http://fipeapi.appspot.com/api/1/carros/marcas.json");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            InputStream in = con.getInputStream();
            Scanner scanner = new Scanner(in);
            scanner.useDelimiter("\\A"); // read all the file
            if (scanner.hasNext()) {
                return scanner.next();
            }

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }



}
