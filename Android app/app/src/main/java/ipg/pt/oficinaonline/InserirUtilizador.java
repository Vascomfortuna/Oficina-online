package ipg.pt.oficinaonline;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class InserirUtilizador extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_inserir_utilizador);
        ViewGroup layout = (ViewGroup) findViewById(R.id.activity_inserir_utilizador);
        Spinner spinner = (Spinner) findViewById(R.id.spinnerInserirUtilizador);
// Create an ArrayAdapter using the string array and a default spinner layout
        ArrayAdapter<CharSequence> adapter = ArrayAdapter.createFromResource(this,
                R.array.opcoesInserirUtilizador, android.R.layout.simple_spinner_item);
// Specify the layout to use when the list of choices appears
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
// Apply the listAdapter to the spinner
        spinner.setAdapter(adapter);
    }
}
