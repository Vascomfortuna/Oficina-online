package ipg.pt.oficinaonline;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by Sandro on 25/01/2017.
 */

public class DatabaseHelper extends SQLiteOpenHelper {

    private static final String TAG = DatabaseHelper.class.getName();
    private static final boolean DUMMY_DATA = true;
    private static final int DB_VERSION = 1;
    private static final String DB_NAME = "database.db";
    private static final String TBL_ABASTECIMENTOS = "bd_abastecimentos";
    private static final String TBL_ANOMALIAS = "bd_anomalias";
    private static final String TBL_CLIENTES = "bd_clientes";
    private static final String TBL_VEICULOS = "bd_veiculos";
    private static final String TBL_MECANICOS = "bd_mecanicos";
    private static final String TBL_REPARACOES_TIPOS = "bd_reparacoes_tipos";
    private static final String TBL_OCORRENCIAS = "bd_ocorrencias";
    private static final String TBL_OCORRENCIAS_ESTADOS = "bd_ocorrencias_estados";
    private static final String TBL_REPARACOES_OCORRENCIAS = "bd_reparacoes_ocorrencias";
    private static final String COLUMN_ID = "_id";

    public DatabaseHelper(Context context) {
        super(context, DB_NAME, null, DB_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        // TODO SANDRO continuar aqui ... sqLiteDatabase.execSQL("CREATE TABLE " + TBL_ABASTECIMENTOS );
    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

    }
}
