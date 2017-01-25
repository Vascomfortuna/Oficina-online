package ipg.pt.oficinaonline;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.concurrent.ExecutionException;

public class RegistarVeiculo extends AppCompatActivity implements AdapterView.OnItemSelectedListener {
    TextView tv;
    String s;
    String[] nomes;
    String[] valores;
    String[] nomesMarcas;
    String[] valoresMarcas;
    JSONObject oneObject;
    ArrayAdapter<String> adapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_registar_veiculo);

        try {
            s = new WebServiceBuscarMarca().execute().get();
            JSONArray jArray = new JSONArray(s);
            nomes = new String[jArray.length()];
            valores = new String[jArray.length()];
            for (int i=0; i < jArray.length(); i++)
            {
                oneObject = jArray.getJSONObject(i);
                nomes[i] = oneObject.getString("name");
                valores[i] = oneObject.getString("id");
            }
            //ViewGroup layout = (ViewGroup) findViewById(R.id.activity_registar_veiculo);
            Spinner spinner = (Spinner) findViewById(R.id.spinnerInserirMarca);
            // Create an ArrayAdapter using the string array and a default spinner layout
            adapter= new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item, nomes);
            // Specify the layout to use when the list of choices appears
            adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            // Apply the listAdapter to the spinner
            spinner.setAdapter(adapter);
            spinner.setOnItemSelectedListener(this);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }


    }
    @Override
    public void onItemSelected(AdapterView<?> parent, View view,
                               int pos, long id) {
        // An item was selected. You can retrieve the selected item using
        // parent.getItemAtPosition(pos)
        int text = Integer.parseInt(valores[pos]);
        String s;
        try {
            s = new WebServiceBuscarModelo().execute(text).get();
            JSONArray jArray = new JSONArray(s);
            nomesMarcas = new String[jArray.length()];
            valoresMarcas = new String[jArray.length()];
            for (int i=0; i < jArray.length(); i++)
            {
                oneObject = jArray.getJSONObject(i);
                nomesMarcas[i] = oneObject.getString("name");
                valoresMarcas[i] = oneObject.getString("id");
            }
            Spinner spinner = (Spinner) findViewById(R.id.spinnerInserirModelo);
            // Create an ArrayAdapter using the string array and a default spinner layout
            adapter= new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item, nomesMarcas);
            // Specify the layout to use when the list of choices appears
            adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            // Apply the listAdapter to the spinner
            spinner.setAdapter(adapter);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

    }

}
