package ipg.pt.oficinaonline;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void BotaoInserirUtilizador(View view){
        Intent intent = new Intent(this, InserirUtilizador.class);
        startActivity(intent);
    }

    public void BotaoRegistarVeiculo(View view){
        Intent intent = new Intent(this, RegistarVeiculo.class);
        startActivity(intent);
    }
    public void BotaoInserirOcorrencia(View view){
        Intent intent = new Intent(this, InserirOcorrencia.class);
        startActivity(intent);
    }
    public void BotaoVerVeiculos(View view){
        Intent intent = new Intent(this, VerVeiculos.class);
        startActivity(intent);
    }
}
